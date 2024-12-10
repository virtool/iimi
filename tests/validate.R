library(iimi)
library(caret)

set.seed(11723)

# ----------------------------------------------------------------

data_path <- "/Users/brycedavidson/Repos/iimi/data/model_data.rda"
df <- get(load(data_path))
label <- "detect_result"
df$detect_result <- as.logical(df$detect_result) # Convert detect_result to logical

# ----------------------------------------------------------------

print(paste("Unique virus count:", length(unique(df$virus_name))))

# ----------------------------------------------------------------

F1_score <- function(y_true, y_pred) {
    precision <- sum(pred & true) / sum(pred)
    recall <- sum(pred & true) / sum(true)
    f1 <- 2 * (precision * recall) / (precision + recall)

    return(f1)
}

# ----------------------------------------------------------------

folds <- createFolds(df$sample_id, k = 5)
predictions <- list()
f1_scores <- numeric(5)

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

    test_y_virus <- test_df %>%
        group_by(virus_name) %>%
        summarize(detect_result = any(detect_result)) %>%
        select(detect_result)

    pred <- as.logical(prediction$Prediction)
    f1_scores[i] <- F1_score(test_y_virus, pred)

    predictions[[i]] <- prediction
}

final_predictions <- do.call(rbind, predictions)

average_f1 <- mean(f1_scores)
print(paste("Average F1 Score:", average_f1))
