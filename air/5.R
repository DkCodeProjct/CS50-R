load("air.RData")

# Find the single largest pollutant source for each county
air <- air %>%
  group_by(county) %>%
  slice_max(emissions, n = 1) %>%
  ungroup()

save(air, file = "5.RData")
