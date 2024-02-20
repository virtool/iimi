#' Plot the coverage profile of the mapped plant sample.
#'
#' @importFrom graphics lines plot legend
#'
#' @param covs An RLE list of coverage information of one or more plant samples.
#' @param cex The size of the main title.
#' @param nucleotide_status Whether display the percentages of A nucleotide and GC
#'     content. Default is `TRUE`.
#' @param legend_status Whether display the legend of the plot. Default is
#'     `TRUE`.
#' @param window The size of the sliding window. Default is 75.
#' @export
plot_cov <-
  function(covs,
           cex = 0.7,
           nucleotide_status = T,
           legend_status = T,
           window = 75) {
    for (sample in names(covs)) {
      counter <- 1

      for (seg in names(covs[[sample]])) {
        plot(
          covs[[sample]][[seg]],
          type = "l",
          main = paste0(
            counter,
            "). ",
            sample,
            ": ",
            nucleotide_info[nucleotide_info$seg_id == seg, 1],
            ",",
            nucleotide_info[nucleotide_info$seg_id == seg, 2],
            ",",
            seg
          ),
          ylab = "",
          cex.main = cex,
          xlab = ""
        )

        unreliable_regions_seg <- unreliable_regions[which(
          unreliable_regions$`Virus segment` == seg &
            (
              unreliable_regions$Categories == "Unmappable regions (virus)" |
                unreliable_regions$Categories == "Unmappable regions (host)"
            )
        ),]

        if (nrow(unreliable_regions_seg) != 0) {
          region <- c()

          for (ii in 1:nrow(unreliable_regions_seg)) {
            region <- c(region,
                       c(unreliable_regions_seg[ii, 1]:unreliable_regions_seg[ii, 2]))
          }
          lines(
            x = region,
            y = rep(0, length(region)),
            col = "red",
            lwd = 2.5
          )
        }

        if (nucleotide_status) {
          gc <- rowSums(letterFrequencyInSlidingView(virus_segments[[seg]],
                                                    window,
                                                    c("G", "C"))) / window

          a <- rowSums(letterFrequencyInSlidingView(virus_segments[[seg]],
                                                   window,
                                                   c("A"))) / window

          plot(
            gc,
            type = "l",
            ylim = c(0, 1),
            xaxt = 'n',
            xlab = "",
            ylab = ""
          )

          lines(a, lty = 3, col = "dimgrey")

          if (legend_status) {
            legend(
              x = "top",
              legend = c("Unmappable region", "GC content", "A percentage"),
              col = c("red", "black", "dimgrey"),
              lty = c(1, 1, 3),
              lwd = 2,
              horiz = TRUE,
              xpd = TRUE,
              bty = "n",
              inset = c(1, 0),
              cex = cex
            )
          }
        }

        counter <- counter + 1
      }
    }
  }
