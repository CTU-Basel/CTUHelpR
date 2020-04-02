context("Sum")

test_that("Test fail", {
  expect_error(Sum("string"))
  expect_error(Sum(c("1", "3")))
})

test_that("Test output", {
  expect_equal(Sum(c(1, 3, NA)), 4)
})