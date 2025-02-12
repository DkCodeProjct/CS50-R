
library(readr)
library(dplyr)
library(testthat)
library(lubridate)

test_that("clean_numeric_col cleans numeric columns correctly", {
  # Create a sample data frame
  df <- data.frame(
    date = c("2023-01-01", "2023-01-02"),
    open = c("10$", "20abc"),
    high = c("30.5", "40%"),
    low = c("5", "6def"),
    stringsAsFactors = FALSE
  )
  
  # Apply the function
  cleaned_df <- clean_numeric_col(df)
  
  # Check numeric conversion
  expect_equal(cleaned_df$open, c(10, 20))
  expect_equal(cleaned_df$high, c(30.5, 40))
  expect_equal(cleaned_df$low, c(5, 6))
  
  # Check rows are not dropped incorrectly
  expect_equal(nrow(cleaned_df), 2)
  
  # Test missing column handling
  df_invalid <- df[, -1]  # Remove date column
  expect_error(clean_numeric_col(df_invalid), "No 'date' column found")
})