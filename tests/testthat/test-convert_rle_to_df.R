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
  expect_failure(
    expect_equal(
      convert_rle_to_df(
        rles()
      ),
      convert_rle_to_df(
        rles(),
        unreliable_regions = prepared_unreliable_regions(),
      )
    )
  )
})

test_that("run_single", {
  rles <- convert_bam_to_rle(
    here::here("tests", "files", "single.sorted.bam"), 
    paired = FALSE
  )

  expect_snapshot(
    convert_rle_to_df(rles, unreliable_regions = prepared_unreliable_regions())
  )
})

test_that("run_paired", {
  rles <- convert_bam_to_rle(
    here::here("tests", "files", "paired_1.sorted.bam"), 
    paired = TRUE
  )

  expect_snapshot(
    convert_rle_to_df(rles, unreliable_regions = prepared_unreliable_regions())
  )
})
