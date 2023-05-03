#' @title predict_iimi()
#'
#' @description Uses a machine learning model to predict the diagnostics result
#' for the plant sample(s). User can use their own model if needed.
#'
#' @param newdata A matrix or data frame that contains the diagnostics result
#' @param method The machine learning method of choice, either Random Forest or
#'     XGBoost. Default is the XGBoost model
#' @param trained_model The trained model. If not provided, default model is used
#' @param seg_level Whether to report the diagnostics result in a virus segment
#' level. If TRUE, the result data frame returns detection result for each
#' segment in each sample. Default is FALSE.
#'
#' @return A data frame of diagnostics result for each sample

#' @export
#' @importFrom dplyr %>% group_by summarise first
#' @importFrom stats predict
#' @importFrom mltools sparsify
#' @importFrom data.table data.table


predict_iimi <- function(newdata, method, trained_model, seg_level = F) {
  if (method == "rf") {
    if (missing(trained_model)) {
      pred = predict(newdata = newdata, trained_rf)
    } else {
      pred = predict(newdata = newdata, trained_model)
    }
    if (seg_level == F) {
      result_df <- pred %>% group_by(sample_id, virus_name) %>%
        summarise(virus_name = first(virus_name),
                  seg_id = first(seg_id),
                  iso_id = first(iso_id),
                  prediction = any(as.logical(prediction)))
    } else {
      result_df = pred
    }
  } else if (method == "xgb") {
    test = sparsify(data.table(newdata))
    if (missing(trained_model)) {
      pred = predict(newdata = test, trained_xgb)
    } else {
      pred = predict(newdata = test, trained_model)
    }
    pred<-data.frame(prediction = pred>0.5, seg_id = newdata$seg_id, iso_id = newdata$iso_id,
                         virus_name = newdata$virus_name, sample_id = newdata$sample_id)
    if (seg_level == F) {
      result_df <- pred %>% group_by(sample_id, virus_name) %>%
        summarise(virus_name = first(virus_name),
                  seg_id = first(seg_id),
                  iso_id = first(iso_id),
                  prediction = any(as.logical(prediction)))
    } else {
      result_df = pred
    }
  } else {
    stop("Only random forets and XGBoost are supported")
  }

  result_df

}
