source("greet.R")
 
test_that("`greet` say hello", {
  expect_equal(greet("Carter"), "hello, Carter")
})