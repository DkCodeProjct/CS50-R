library(dplyr)

load("zelda.RData") 

zelda <- zelda |> 
  group_by(year) |> 
  summarize(releases = n(), .groups = "drop") |>  # Count the number of releases per year
  arrange(desc(releases)) |> 
  as_tibble()  

save(zelda, file = "2.RData")

zelda
