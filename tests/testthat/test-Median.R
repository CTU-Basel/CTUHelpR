context("Median")

test_that("Test fail", {
  expect_error(Median(iris))
  expect_error(Median(c(FALSE, TRUE, TRUE, NA)))
  expect_error(Median(c("string")))
  expect_error(Median(c(NA, NA, NA, NA)))
})

test_that("Test output", {
  expect_equal(Median(c(1, 5, 4, NA)), 4)
  expect_equal(Median(c(NA_integer_, NA_integer_, NA_integer_, NA_integer_)), NA_integer_)
  expect_equal(Median(c(NA_real_, NA_real_, NA_real_, NA_real_)), NA_real_)
})
