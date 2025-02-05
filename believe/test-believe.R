  
source("believe.R") 
library("testthat")

test_that("linear_regression get correct input",{
  x <- c(1, 2, 3, 3.4, 5)
  y <- c(2, 4, 5, 0.4, 4)
  
  model <- linear_regression(x, y)
  
  expect_equal(model$slope,  0.22)
  expect_equal(model$intercept, 2.44)
  
  x1 <- c(1, 2, 3, 4, 5)
  y2 <- c(2, 4, 5, 4, 4)
  
  model1 <- linear_regression(x1, y2)
  
  expect_equal(model1$slope,  0.4)
  expect_equal(model1$intercept, 2.6)
  
})
          

test_that("linear_regression invalid input",{
  x <- c(1, 2, 3, 3.4, 5)
  y <- c(2, 4, 5, 0.4)
  expect_warning(linear_regression(x, y))
  
  x1 <- c(1, 2, 3, 3.4, 5)
  y2 <- c(2, 4, 5, 0.4)
  expect_warning(linear_regression(x1, y2))
  
})

test_that("linear_regression handles invalid input", {
  
  x <- c(1, 2, 3, 3.4, 5)
  y <- c(2, 4, 5, 0.4)
  
  expect_warning(linear_regression(x, y))
  
  x1 <- c(1, 2, 3, 3.4, 5)
  y2 <- c(2, 4, 5, 0.4)
  
  expect_warning(linear_regression(x1, y2))
})


test_that("linear_regression trow an error",{
  x <- c(1, 2, 3, 4, 5)
  y <- c(2, 4, 5, "4", 2)
  
  expect_error(linear_regression(x, y))
    
})
  
test_that("linear_regression get negative input",{
  x <- c(1, 2, 3, 4, 5)
  y <- c(2, 4, 5, -3, 3)
  
  model <- linear_regression(x, y)
  expect_equal(model$slope,  -0.5)
  expect_equal(model$intercept, 3.7)
})
  
  
test_that("linear_regression get special values", {
  x <- c(1, 2, NaN, 4, 5)
  y <- c(2, 4, 5, -3, 3)
  
  expect_error(linear_regression(x, y))  
  
  x1 <- c(1, 2, NaN, 4, 5)
  y2 <- c(2, "inf", 5, -3, 3)
  
  expect_error(linear_regression(x1, x2))
}) 

  
  
