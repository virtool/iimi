library(iimi)
library(caret)
library(dplyr)

set.seed(11723)

# ----------------------------------------------------------------

data_path <- "/Users/brycedavidson/Repos/iimi/data/model_data.rda"
df <- get(load(data_path))
label <- "detect_result"
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

k <- 5
folds <- createFolds(df$sample_id, k = k)
predictions <- list()
metrics <- data.frame(precision = numeric(k), recall = numeric(k), f1 = numeric(k))

for (i in 1:5) {
    train_indices <- folds[[i]]
    train_df <- df[train_indices, ]
    test_df <- df[-train_indices, ]

    train_y <- train_df[, label]
    train_x <- train_df[, -which(names(train_df) == label)]

    test_y <- test_df[, label]
    test_x <- test_df[, -which(names(train_df) == label)]

    # -------------------------------

    fit <- train_iimi(train_x = train_x, train_y = train_y)

    # -------------------------------

    prediction <- predict_iimi(newdata = test_x, trained_model = fit, report_virus_level = TRUE)

    # -------------------------------

    test_y_virus_level <- test_df %>%
        group_by(virus_name) %>%
        summarize(detect_result = any(detect_result)) %>% select(detect_result)

    prediction <- prediction %>%
     group_by(Virus_name) %>% summarize(Prediction = any(Prediction)) %>% select(Prediction)

    y_pred <- as.logical(prediction$Prediction)

    fold_metrics <- compute_metrics(test_y_virus_level, y_pred)
    # fold_metrics <- compute_metrics(test_y, y_pred)
    metrics[i, ] <- c(fold_metrics$precision, fold_metrics$recall, fold_metrics$f1)

    predictions[[i]] <- prediction
}

final_predictions <- do.call(rbind, predictions)

average_metrics <- colMeans(metrics)

print(paste("Average Precision:", average_metrics["precision"]))
print(paste("Average Recall:", average_metrics["recall"]))
print(paste("Average F1 Score:", average_metrics["f1"]))
