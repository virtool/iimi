#' Nucleotide information for the virus sequences
#'
#' A data set containing the GC content and other information about the virus
#' segments from the official Virtool virus data base (version 1.4.0). The
#' variables are as follows:
#'
#' @format A data frame with 8 variables:
#' \describe{
#'   \item{virus_name}{The virus name}
#'   \item{iso_id}{The virus isolate ID}
#'   \item{seg_id}{The virus segment ID}
#'   \item{A_percent}{The percentage of A nucleotides in the virus segment}
#'   \item{C_percent}{The percentage of C nucleotides in the virus segment}
#'   \item{T_percent}{The percentage of T nucleotides in the virus segment}
#'   \item{GC_percent}{The percentage of G and C nucleotides in the virus
#'   segment (GC content)}
#'   \item{seg_len}{The length of the virus sequences}
#'   }
"nucleotide_info"

#' The unreliable regions of the virus sequences
#'
#' A data frame of unmappable regions and regions of GC% and A% over 60% and 45%
#' respectively for the virus segments. If a sequence does not have any unreliable
#' regions, it will not be present in this data frame.
#'
#' @format A data frame of unreliable regions in the run-length encoding format
#'  for virus segments.
#' \describe{
#'   \item{Start}{The start position of the region that is considered unreliable}
#'   \item{End}{The end position of the region that is considered unreliable}
#'   \item{Virus segment}{The virus segment ID}
#'   \item{Categories}{The category that this unrelible region belong to, which are Unmappable regions (host), Unmappable regions (virus), CG% > 60%, A% > 45%.}
#' }
"unreliable_regions"

#' The virus segments from the official Virtool virus data base
#'
#' @format A DNAStringSet object of the 3,138 virus segments.
"virus_segments"

#' A model trained using the default Random Forest settings.
"trained_rf"

#' A model trained using the default XGBoost settings.
"trained_xgb"

#' A model trained using the default Elastic Net settings.
"trained_en"

#' Known diagnostics result of virus segments
#'
#' A matrix containing the known truth about the diagnostics result for each
#' plant sample for the example data. It records whether the sample is infected
#' with a virus segment. Each column is a sample, and each row is a virus
#' segment's diagnostics status for six samples.
#'
#' @format A matrix with 6 columns:
#' \describe{
#'   \item{S1}{Sample one}
#'   \item{S2}{Sample two}
#'   \item{S3}{Sample three}
#'   \item{S4}{Sample four}
#'   \item{S5}{Sample five}
#'   \item{S6}{Sample six}
#'   }
"example_diag"

#' Coverage profiles of six plant samples.
#'
#' A list of coverage profiles for six plant samples. This is only a toy sample.
#' You can use it for running the examples in the vignette. We recommend using
#' more data to train the model, the more the better.
#'
#' TODO: Should this be six or ten samples? It contradicts fixstyle.
#'
#' @format A list of 6 run length encoding (RLE) lists for 6 plant samples.
#'  Each RLE list has the RLE vector of a virus segment
"example_cov"
