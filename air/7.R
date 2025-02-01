load("air.RData")

air <- air %>%
  group_by(level_1, pollutant) %>%
  summarize(emissions = sum(emissions, na.rm = TRUE)) %>%
  rename(source = level_1) %>%
  arrange(source, pollutant)


save(air, file = "7.RData")
