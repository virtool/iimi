test_that("run_defaults", {  
  expect_snapshot(
    convert_bam_to_rle(here::here("tests", "files", "reads_1.sorted.bam"))
  )
})

test_that("run_single", {
  expect_snapshot(
    convert_bam_to_rle(
      here::here("tests", "files", "single.sorted.bam"), 
      paired = FALSE
    )
  )
})

test_that("run_paired", {
  expect_snapshot(
    convert_bam_to_rle(
      here::here("tests", "files", "paired_1.sorted.bam"), 
      paired = TRUE
    )
  )
})