load("air.RData")

# Filter and sort by emissions in descending order
air <- air %>%
  filter(county == "OR - Lane") %>% 
  arrange(desc(emissions))

save(air, file = "4.RData")
