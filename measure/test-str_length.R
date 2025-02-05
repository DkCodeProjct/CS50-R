library(stringr)
library(testthat)

test_that("str_length get letters as input", {
  expect_equal(str_length(letters), c(1, 1, 1, 1, 1 ,1 ,1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1))
})

test_that("str_length get special values as input", {
  expect_warning(str_length(NA), NA)
  expect_warning(str_length(NaN), NA)
  expect_warning(str_length("inf"), NA)
})

test_that("str_length get data frame as input", {
  expect_equal(str_length(factor("abc")), 3)
  expect_equal(str_length(c("i", "like", "programming", NA)), c(1, 4, 11, NA))
})

test_that("str_length get non-alphabetical characters as input", {
  expect_equal(str_length("a "), 2)
  expect_equal(str_length("a "), 2)
  expect_warning(str_length("😊"), NA)
  
})  

