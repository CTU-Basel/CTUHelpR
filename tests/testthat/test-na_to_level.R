context("na to level")

test_that("Test fail", {
  expect_error(na_to_level(123))
  expect_error(na_to_level("abc"))
})

test_that("Test output", {
  expect_equal(as.vector(na_to_level(factor(c("a","b", "b", NA)))), 
               as.vector(factor(c("a","b", "b", "N/A"))))
  expect_true(is.factor(na_to_level(factor(c("a","b", "b", NA)))))
})
