library(testthat)
source("test.R") 
  
test_that("`avg` cal mean", {
  expect_equal(avg(c(1, 2, 3)), 2)
  expect_equal(avg(c(-1, -2, -3)), -2)
  expect_equal(avg(c(1, 0, -1)), 0)
})

test_that("`avg` return NA if input contain NA", {
  expect_equal(suppressWarnings(avg(c(1, 2, NA))), NA)
  expect_equal(suppressWarnings(avg(c(NA, NA, NA))), NA)
})

test_that("`avg` warn about NAs", {
  expect_warning(avg(c(1, 2, NA)))
  expect_warning(avg(c(NA, NA, NA)))
})
  
test_that("`avg` stop if `x` is non num", {
  expect_error(avg(c("Quack")))
  expect_error(avg(c("1", "2", "3")))
  
})
