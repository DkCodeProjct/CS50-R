
library(dplyr)
library(readr)
library(lubridate)

# this is the second func of the plot me...

clean_numeric_col <- function(df) {
  
  # clean open/high/low col using loop :) , i wrote  this mySelf. :P
  for (col in c("open", "high", "low")) {
    colNm <- grep(col, colnames(df), ignore.case = TRUE, value = TRUE)
    if (length(colNm) == 0) {
      stop(paste("No", col, "Found in CSV"))
    }
    
    # rm non Numeric val
    df[[colNm]] <- gsub("[^0-9.]", "", df[[colNm]])
    df[[colNm]] <- as.numeric(df[[colNm]])
    
    if (any(is.na(df[[colNm]]))) {
      warning(paste("Warning: Some values in the", col, "column could not be converted to numeric"))
    }
  }
  
  if (!"date" %in% colnames(df)) {
    stop("No 'date' column found in the data frame")
  }
  
  # dynamicly drop rows with invalid data
  cleanedCol <- grep("^(open|high|low)$", colnames(df), ignore.case = TRUE, value = TRUE)
  df <- df[complete.cases(df[, cleanedCol]), ]
  
  df <- unique(df)
  
  return(df)
}

# This will clean up the num col data..
