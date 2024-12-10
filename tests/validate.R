library(iimi)
library(caret)

set.seed(11723)

# ----------------------------------------------------------------

data_path <- "/Users/brycedavidson/Repos/iimi/data/model_data.rda"
df <- get(load(data_path))
label <- "detect_result"

# ----------------------------------------------------------------

F1_score <- function(y_true, y_pred) {
    true <- as.logical(y_true)
    pred <- as.logical(y_pred)

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

    train_y <- train_df$detect_result
    train_x <- train_df[, -which(names(train_df) == label)]

    test_y <- test_df$detect_result
    test_x <- test_df[, -which(names(train_df) == label)]

    # -------------------------------

    fit <- train_iimi(train_x = train_x, train_y = train_y)

    # -------------------------------

    prediction <- predict_iimi(newdata = test_x, trained_model = fit, report_virus_level = FALSE)

    # -------------------------------


    pred <- prediction$Prediction
    f1_scores[i] <- F1_score(test_y, pred)

    predictions[[i]] <- prediction
}

final_predictions <- do.call(rbind, predictions)

average_f1 <- mean(f1_scores)
print(paste("Average F1 Score:", average_f1))
