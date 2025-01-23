

return_scroe <- function(csv, country, years) {
  if (country %in% csv$country) {
    
    for (year in years) {
      score <- csv$sum[csv$country & csv$year == year]
      cat("Year: ",year, "Score: ", round(score, 2))
    }
    
  } else {
    print("Invalid Country")
  }
}
#combine[combine$country == "Finland" ,c("year", "sum")]

return_scroe(csv = "combined.csv", country = "Finland", years = years)
