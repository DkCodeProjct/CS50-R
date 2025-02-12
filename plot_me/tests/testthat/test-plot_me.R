
library(readr)
library(dplyr)
library(testthat)
library(lubridate)


test_that("prep_csv throws an error if required columns are missing", {
  incomplete_csv <- tempfile(fileext = ".csv")
  write.csv(
    data.frame(
      Time = c("2023-01-01", "2023-01-02"),
      Open = c("100.5", "101.0"),
      High = c("101.2", "102.0")
    ),
    incomplete_csv,
    row.names = FALSE
  )
  
  expect_error(prep_csv(incomplete_csv), "No `date` col found in CSV.")
  
  unlink(incomplete_csv)
})