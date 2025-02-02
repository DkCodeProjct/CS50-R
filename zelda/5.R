library(tidyr)
library(stringr) 
library(dplyr) 

load("zelda.RData")


zelda <- zelda |> 
  mutate(produceCount = str_count(producers, ",") + 1) |> 
  filter(produceCount > 1) |> 
  #filter(title == Producers > 1) // wrong approch
  group_by(title) |> 
  filter(year == min(year)) |> 
  ungroup() |> 
  arrange(title, year, system)

save(zelda, file = "5.RData")

dim(zelda)
#print(sortProduce)
  
