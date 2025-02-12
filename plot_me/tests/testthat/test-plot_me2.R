
library(readr)
library(dplyr)
library(testthat)
library(lubridate)
library(ggplot2)
library(viridisLite)

test_that("plot_me generates the expected plot", {
  # Generate dummy CSV
  dummy_csv <- tempfile(fileext = ".csv")
  write.csv(
    data.frame(
      date = c("Jan 1, 2023", "Jan 2, 2023", "Jan 3, 2023"),  # Match expected case
      open = c(100, 102, 101),
      high = c(105, 107, 106),
      low = c(95, 96, 97)
    ),
    dummy_csv,
    row.names = FALSE
  )
  
  # Check that the function runs without error
  expect_no_error(plotme(dummy_csv))
  
  # Check that the output is a ggplot object
  p <- plotme(dummy_csv)
  expect_s3_class(p, "ggplot")
})