context("Median")

test_that("Test fail", {
  expect_error(Median(iris))
})

test_that("Test output", {
  expect_equal(Median(c(FALSE, TRUE, TRUE, NA)), TRUE)
  expect_equal(Median(c("string")), "string")
  expect_equal(Median(c(NA, NA, NA, NA)), NA)
  expect_equal(Median(c(1, 5, 4, NA)), 4)
})