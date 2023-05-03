#' GC content of over 3,000 virus segments
#'
#' A data set containing the GC content and other information about the virus
#' segments from the official Virtool virus data base. The variables are as
#' follows:
#'
#' @format A data frame with 3,138 rows and 7 variables:
#' \describe{
#'   \item{virus_name}{The virus name}
#'   \item{iso_id}{The virus isolate ID}
#'   \item{seg_id}{The virus segment ID}
#'   \item{A_percent}{The percentage of A nucleotides in the virus segment}
#'   \item{C_percent}{The percentage of C nucleotides in the virus segment}
#'   \item{T_percent}{The percentage of T nucleotides in the virus segment}
#'   \item{GC_percent}{The percentage of G and C nucleotides in the virus
#'   segment}
#'   \item{seg_len}{The length of the virus segment}
#'   }
"GCdf"



#' The mappability profile of the virus segments
#'
#' A list of unmappable regions for the 3,138 virus segments.
#'
#' @format A list of 3,138 unmappable regions in the run-length encoding format.

"mappability_profile"



#' The virus segments from the official Virtool virus data base
#'
#' A DNAStringSet object of the 3,138 virus segments.
#'
#'

"virus_segments"


#' A trained model using the default Random Forest settings
#'
#'

"trained_rf"



#' A trained model using the default XGBoost settings
#'
#'
#'

"trained_xgb"

