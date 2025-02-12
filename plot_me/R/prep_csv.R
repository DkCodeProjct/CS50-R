library(lubridate)
library(dplyr) 
library(ggplot2)
library(stringr)
library(viridisLite)

# This is the first func.. 

prep_csv <- function(csv) {
  df <- read.csv(csv, stringsAsFactors = FALSE) 
  
  colnames(df) <- tolower(colnames(df))
  
  df <- df |> 
    select(
      all_of(grep("date|open|high|low", colnames(df), ignore.case = TRUE, value = TRUE))
    )
  
  dateCol <- grep("date", colnames(df), ignore.case = TRUE, value = TRUE)
  if (length(dateCol) == 0) {
    stop("No `date` col found in CSV.")
  }
  
  df[[dateCol]] <- gsub("\"", "", df[[dateCol]]) # rm ""
  df[[dateCol]] <- trimws(df[[dateCol]])  # trim extra sapce 
  
  parsedDate <- mdy(df[[dateCol]]) # lubridate method
  invalidDates <- df[[dateCol]][is.na(parsedDate)]
  
  if (length(invalidDates) > 0) {
    print("Invalid Date Values")
    print(head(invalidDates))
    
    # rm rows with invalid date
    df <- df[!is.na(parsedDate), ]
    
  } else {
    df[[dateCol]] <- parsedDate  
  }
  
  return(df)
}
