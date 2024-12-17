library(iimi)
library(caret)
library(dplyr)

set.seed(11723)

# ----------------------------------------------------------------

data_path <- "/Users/brycedavidson/Repos/iimi/data/model_data.rda"
df <- get(load(data_path))
df$detect_result <- as.logical(df$detect_result)

# ----------------------------------------------------------------

print(paste("Unique virus count:", length(unique(df$virus_name))))

# ----------------------------------------------------------------

compute_metrics <- function(y_true, y_pred) {
    precision <- sum(y_pred & y_true) / sum(y_pred)
    recall <- sum(y_pred & y_true) / sum(y_true)
    f1 <- 2 * (precision * recall) / (precision + recall)
    return(list(precision = precision, recall = recall, f1 = f1))
}

# ----------------------------------------------------------------

bin_edges <- c(0, 1, 2, 3, 4, Inf)
bin_labels <- c("1", "2", "3", "4", ">4")

df <- df %>%
    group_by(virus_name, sample_id) %>%
    mutate(num_segments = cut(n(), breaks = bin_edges, labels = bin_labels, right = TRUE)) %>%
    ungroup()

count_segment <- df %>%
    group_by(num_segments, detect_result) %>%
    summarise(n = n()) %>%
    mutate(percentage = n / sum(n))

count_virus <- df %>%
    group_by(virus_name, sample_id) %>%
    summarize(
        detect_result = all(detect_result),
        num_segments = cut(n(), breaks = bin_edges, labels = bin_labels, right = TRUE)
    ) %>%
    ungroup() %>%
    group_by(num_segments, detect_result) %>%
    summarise(n = n()) %>%
    mutate(percentage = n / sum(n))

exit()

# -------------------------------


compound_label <- paste(df$num_segments, df$detect_result, sep = "_")

df <- df %>%
    select(-num_segments) %>%
    mutate(detect_result = as.logical(detect_result))

# ----------------------------------------------------------------

k <- 5
folds <- createFolds(compound_label, k = k)
predictions <- list()
metrics <- data.frame(precision = numeric(k), recall = numeric(k), f1 = numeric(k))

for (i in 1:5) {
    train_indices <- folds[[i]]
    train_df <- df[train_indices, ]
    test_df <- df[-train_indices, ]

    label <- "detect_result"

    train_y <- as.logical(train_df[[label]])
    train_x <- train_df[, -which(names(train_df) == label)]

    test_y <- as.logical(test_df[[label]])
    test_x <- test_df[, -which(names(train_df) == label)]

    # -------------------------------

    fit <- train_iimi(train_x = train_x, train_y = train_y)

    # -------------------------------

    prediction <- predict_iimi(newdata = test_x, trained_model = fit, report_virus_level = TRUE)

    # -------------------------------

    test_y_virus_level <- test_df %>%
        arrange(virus_name, sample_id) %>%
        group_by(virus_name, sample_id) %>%
        summarize(detect_result = all(detect_result), .groups = "drop") %>%
        rename(label = detect_result)

    prediction <- prediction %>%
        arrange(Virus_name, Sample_ID) %>%
        select(Virus_name, Sample_ID, Prediction) %>%
        rename(virus_name = Virus_name, sample_id = Sample_ID, label = Prediction)

    # -------------------------------

    stopifnot(test_y_virus_level$virus_name == prediction$virus_name)
    stopifnot(test_y_virus_level$sample_id == prediction$sample_id)

    # -------------------------------

    fold_metrics <- compute_metrics(as.logical(test_y_virus_level$label), as.logical(prediction$label))
    metrics[i, ] <- c(fold_metrics$precision, fold_metrics$recall, fold_metrics$f1)

    predictions[[i]] <- prediction
}

final_predictions <- do.call(rbind, predictions)

average_metrics <- colMeans(metrics)
print(metrics)
print(paste("Average Precision:", average_metrics["precision"]))
print(paste("Average Recall:", average_metrics["recall"]))
print(paste("Average F1 Score:", average_metrics["f1"]))
