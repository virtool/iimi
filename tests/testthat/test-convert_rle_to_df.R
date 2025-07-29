prepared_unreliable_regions <- function() {
  return(
    combined_unreliable_regions %>%
      dplyr::filter(`1_4_0` == TRUE) %>%
      dplyr::select(Start, End, `Virus segment`, Categories)
  )
}

rles <- function() {
  return(
    rles <- convert_bam_to_rle(here::here("tests", "files", "reads_1.sorted.bam"))
  )
}

test_that("run_with_defaults", {
  expect_snapshot(
    convert_rle_to_df(rles())
  )
})

test_that("run_with_unreliable_regions", {
  expect_snapshot(
    convert_rle_to_df(
      rles(), unreliable_regions = prepared_unreliable_regions()
    )
  )
})

test_that("unreliable_regions_has_effect", {
  unmasked_rles <- convert_rle_to_df(rles())
  
  masked_rles <- convert_rle_to_df(
    rles(),
    unreliable_regions = prepared_unreliable_regions(),
  )

  expect_snapshot(
    waldo::compare(
      unmasked_rles, masked_rles, 
      max_diffs = Inf,
      x_arg = "disabled", y_arg = "enabled"
    )
  )
})

test_that("run_paired", {
  rles_single <- convert_bam_to_rle(
    here::here("tests", "files", "paired_1.sorted.bam"), 
    paired = FALSE
  )
  
  rles_paired <- convert_bam_to_rle(
    here::here("tests", "files", "paired_1.sorted.bam"), 
    paired = TRUE
  )

  expect_snapshot(
    waldo::compare(
      convert_rle_to_df(rles_single, unreliable_regions = prepared_unreliable_regions()),
      convert_rle_to_df(rles_paired, unreliable_regions = prepared_unreliable_regions()), 
      max_diffs = Inf,
      x_arg = "single", y_arg = "paired"
    )
  )
})
