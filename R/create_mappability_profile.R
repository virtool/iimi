#' Create mappability profile
#'
#' Creates a data frame of start and end positions of the regions that are considered
#' unmappable. Unmappable areas indicate that they can be mapped to another virus
#' segment or a host genome. Note that we only have Arabidopsis Thaliana as a host.
#'
#' @importFrom Rsamtools BamFile
#' @importFrom Rsamtools scanBam
#' @importFrom R.utils seqToIntervals
#' @importFrom stringr str_split
#' @importFrom stringr fixed
#'
#' @param path_to_bam_files Path to the folder that stores the indexed and
#'     sorted BAM file(s).
#' @param category Type of unreliable region you are creating. You can use
#'     categories in the provided `unreliable_regions` data frame or customize
#'     in your own way.
#' @param window The sliding window size of your choice. Default is 75.
#'
#' @returns A data frame of start and end positions of the regions that are
#'     considered unmappable.
#' @export
create_mappability_profile <- function(path_to_bam_files, category, window = 75) {
    bam_files <-
      list.files(
        path = path_to_bam_files,
        pattern = "bam$",
        full.names = TRUE,
        include.dirs = TRUE
      )
    MP_scan <- lapply(bam_files, function(x) {
      bamFile <- BamFile(x)
      aln <- scanBam(bamFile)
      aln <- as.data.frame(aln)
      aln_df <-
        aln[which(aln$rname != sub(pattern = "(.*)\\.sorted.*$",
                                   replacement = "\\1",
                                   basename(x))), ]
      if (nrow(aln_df) == 0) {
        aln_df[nrow(aln_df) + 1, ] <- NA
      }

      aln_df$seg_id <-
        sub(pattern = "(.*)\\.sorted.*$",
            replacement = "\\1",
            basename(x))
      return(aln_df)
    })

    unreliable_regions <- data.frame(matrix(NA, ncol = 4, nrow = 0))

    for (ii in length(MP_scan)) {
      segment_id <- MP_scan[[ii]]$seg_id[1]
      seq <- virus_segments[[segment_id]]

      regions <- rep(0, nchar(seq))

      location <- unlist(lapply(MP_scan[[ii]]$qname, function(x) {
        return(as.numeric(str_split(x, fixed("_"))[[1]][2]))
      }))

      if (!is.na(MP_scan[[ii]]$qname[1])) {
        for (jj in 1:length(location)) {
          idx <- location[jj]

          if (any(regions[idx:(idx + window - 1)] == 0)) {
            regions[idx:(idx + window - 1)] <- 1
          }
        }
      }

      regions <- which(regions == 1)

      region_index <- seqToIntervals(regions)

      for (nn in 1:nrow(region_index)) {
        if (nrow(region_index) != 0) {
          unreliable_regions <- rbind(
            unreliable_regions,
            c(region_index[nn, 1],
              region_index[nn, 2],
              category
            )
          )
        }
      }
    }

    colnames(unreliable_regions) <- c("Start", "End", "Virus segment", "Categories")

    unreliable_regions
  }
