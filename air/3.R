load("air.RData")

air <- air %>%
  filter(county == "OR - Lane") 


save(air, file = "3.RData")
