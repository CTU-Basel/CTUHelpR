context("na to level")

test_that("Test fail", {
  expect_error(na_to_level(123))
  expect_error(na_to_level("abc"))
})

test_that("Test output", {
  expect_equal(na_to_level(factor(c("a","b", "b", NA))), factor(c("a","b", "b", "N/A")))
})