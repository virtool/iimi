#' Predict the infection status of samples using a machine learning model
#'
#' The user can choose between `Random Forest`, `XGBoost`, or `Elastic Net` model. They
#' can also provide a trained model if they have one. If not, the default model will be
#' used.
#'
#' @importFrom stats predict
#' @importFrom stats model.matrix
#' @importFrom mltools sparsify
#' @importFrom data.table data.table
#'
#' @param newdata A matrix or data frame that contains the features extracted
#'    from the coverage profile using `convert_bam_to_cov()`.
#' @param method The machine learning method of choice, `Random Forest`,
#'    `XGBoost`, or `Elastic Net`. Default is `XGBoost` model.
#' @param trained_model The trained model. If not provided, default model is
#' used.#'
#' @returns A data frame of diagnostics result for each sample
#' @export
predict_iimi <- function(newdata, method, trained_model) {
    if (method == "rf") {
      if (missing(trained_model)) {
        model <- trained_rf
      } else {
        model <- trained_model
      }

      prediction <- predict(
        newdata = newdata[, -c(1:4)],
        model,
        importance = T,
        type = "prob"
      )

      result_df <- data.frame(
        Sample_ID = newdata$sample_id,
        Virus_name = newdata$virus_name,
        Isolate_ID = newdata$iso_id,
        Segment_ID = newdata$seg_id,
        Prediction = prediction[, "TRUE"] > 0.5,
        Probability = prediction[, "TRUE"]
      )

    }

    if (method == "xgb") {
      test <- sparsify(data.table(newdata[, -c(1:4)]))

      if (missing(trained_model)) {
        model <- trained_xgb
      } else {
        model <- trained_model
      }

      prediction <- predict(newdata = test, model)

      result_df <- data.frame(
        Sample_ID = newdata$sample_id,
        Virus_name = newdata$virus_name,
        Isolate_ID = newdata$iso_id,
        Segment_ID = newdata$seg_id,
        Prediction = prediction > 0.5,
        Probability = prediction
      )
    }

    if (method == "en") {
      xx.test <- cbind(rep(1, nrow(newdata)), newdata[, -c(1:4)])
      colnames(xx.test)[1] <- "labels"
      test <- model.matrix(labels ~ ., xx.test)

      if (missing(trained_model)) {
        model <- trained_en
      } else {
        model <- trained_model
      }

      prediction <- predict(model,
                           newx = test,
                           s = "lambda.1se",
                           type = "response")

      result_df <- data.frame(
        Sample_ID = newdata$sample_id,
        Virus_name = newdata$virus_name,
        Isolate_ID = newdata$iso_id,
        Segment_ID = newdata$seg_id,
        Prediction = prediction > 0.5,
        Probability = prediction
      )
    }

    if (method %in% c("rf", "xgb", "en") == F) {
      stop("`method` must be `rf`, `xgb`, or `en`.")
    }

    result_df
  }
