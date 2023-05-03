#' @title train_iimi()
#'
#' @description Trains a XGBoost (default) or Random Forest model using
#' user-provided data. Default for XGBooost model is:
#' * nrounds = 100, max_depth = 10, gamma = 6
#' Default for Random Forest model is:
#' * ntree=100, nodesize = 1, replace = T, mtry = floor(sqrt(ncol(train_x))))
#'
#' @param train_x A data frane or a matrix of predictors
#' @param train_y A response vector of labels (needs to be a factor)
#' @param method The machine learning method of choice, either Random Forest or
#'     XGBoost. Default is the XGBoost model
#' @param params_rf A list of parameters to train a Random Forest in train_iimi
#' @param nrounds_xgb Max number of boosting iterations
#' @param params_xgb A list of parameters to train a XGBoost model in train_iimi
#'
#' @return A Random Forest or a XGBoost model

#' @export
#' @importFrom randomForest randomForest
#' @importFrom mltools sparsify
#' @importFrom xgboost xgboost
#' @importFrom data.table data.table




train_iimi <- function(train_x, train_y, method = "xgb",
                           params_rf = list(ntree=100, nodesize = 1, replace = T,
                                            mtry = floor(sqrt(ncol(train_x)))),
                           nrounds_xgb = 100,
                           params_xgb = list(max_depth = 10, gamma = 6)) {

  if (method == "rf") {
    # take in default parameters if no parameters are set
    if ("sampsize" %in% names(params_rf) == F) {
      trained_model = randomForest(x = train_x, y = train_y,
                                   ntree = params_rf$ntree, mtry = params_rf$mtry,
                                   nodesize = params_rf$nodesize, importance = T,
                                   replace = params_rf$replace)
    } else {
      trained_model = randomForest(x = train_x, y = train_y,
                                   ntree = params_rf$ntree, mtry = params_rf$mtry,
                                   nodesize = params_rf$nodesize,
                                   sampsize = params_rf$sampsize, importance = T,
                                   replace = params_rf$replace)
    }
  } else if (method == "xgb") {
    #convert matrix to dgCMatrix
    xgbtrain<-sparsify(data.table(train_x))
    if (class(train_y) == "factor") {
      xgblabel<-as.numeric(as.logical(train_y))
    } else {
      xgblabel<-as.numeric(train_y)
    }
    trained_model = xgboost(data = xgbtrain, label = xgblabel,
                            objective = "binary:logistic",
                            nrounds = nrounds_xgb,
                            params = params_xgb)
  } else {
    stop("Only random forest model or XGBoost model is support by this function")
  }

  trained_model

}






