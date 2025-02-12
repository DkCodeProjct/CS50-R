library(ggplot2)
library(viridisLite)
library(lubridate)
library(readr)
library(dplyr)

# THis is the func that would user use.
# This will plot out stock price data..:)

plotme <- function(csv) {
  
  df <- prep_csv(csv)
  cleanedDf <- clean_numeric_col(df)
  
  #print(colnames(cleanedDf))  
  
  dateCol <- grep("date", colnames(cleanedDf), ignore.case = TRUE, value = TRUE)
  if (length(dateCol) == 0) {
    stop("No `date` column found in the CSV.")
  }
  dateCol <- dateCol[1]  # Use the first match if multiple matches exist
  
  p <- ggplot(
    cleanedDf, 
    aes(x = .data[[dateCol]])
  ) +
    geom_line(aes(y = open, color = "Open", linetype = "Open"), linewidth = 1) +
    geom_line(aes(y = high, color = "High", linetype = "High"), linewidth = 1) +
    geom_line(aes(y = low, color = "Low", linetype = "Low"), linewidth = 1) +
    
    labs(
      title = "Stock Price over Time",
      x = "Date",
      y = "Price"
    ) +
    
    scale_color_manual(
      values = c(
        "Open" = viridis(5)[2],
        "High" = viridis(3)[2],
        "Low" = viridis(3)[3]
      ),
      name = "Price Type"
    ) +
    theme_minimal()
  
  ggsave(
    filename = "visualize.png",
    plot = p,
    width = 10,
    height = 6,
    units = "in"
  )
  
  return(p)
} 

# it  use ggplot and plot out data, get input as stock_price dataset and will output stock prices, 
# open low high and so on :0 




