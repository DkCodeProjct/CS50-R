calculate_growth_rate <- function(years, visitors) {
  #  Calculate yearly growth of visitors
  latestVisit <- visitors[length(visitors)]
  firstVisit <- visitors[1]
  difVisit <- latestVisit - firstVisit 
  
  latestYear <- years[length(years)]
  firstYear <- years[1]
  difYear <- latestYear - firstYear
  
  avgYearlyGrowth <- difVisit / difYear
  return(avgYearlyGrowth)
}

predict_visitors <- function(years, visitors, year) {
  #  Predict visitors in given year
  numOfYears <- year - years[length(years)]
  visit <- visitors[length(visitors)] + (calculate_growth_rate(years, visitors) * numOfYears)
  return(visit)
}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))


