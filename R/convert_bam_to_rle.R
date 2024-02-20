#' Convert BAM files to run-length encodings (RLEs).
#'
#' Converts one or more indexed and sorted BAM files into a run-length encodings (RLEs)
#' list.
#'
#' @importFrom GenomicAlignments readGAlignments
#' @importFrom GenomicAlignments readGAlignmentPairs
#' @importFrom IRanges coverage
#' @importFrom Rsamtools BamFile
#' @importFrom stats setNames

#' @param bam_file path to BAM file(s).
#' @param paired Indicate if the sequencing paired is single-end or paired-end
#'     reads. `TRUE` if paired-end. `FALSE` if single-end.#'
#' @returns A list of coverage profile(s) in RLE format with one or more samples.
#' @export
convert_bam_to_rle <- function(bam_file, paired = F) {
  covs <- setNames(
    lapply(bam_file,
           function(x) {
             bams <- BamFile(x)

             if (!paired) {
               xread <- readGAlignments(bams)
             } else if (paired) {
               xread <- readGAlignmentPairs(bams)
             }

             cov <- coverage(xread)

             return(cov)
           }),
    sub(
      pattern = "(.*)\\.sorted.*$",
      replacement = "\\1",
      basename(bam_file)
    )
  )

  covs_only_mapped <- lapply(covs, function(x) {
    x[sapply(x, function(y) {
      !all(y == 0)
    })]
  })

  covs_only_mapped
}
