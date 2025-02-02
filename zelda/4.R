library(tidyr)
library(stringr)
library(dplyr)  

load("zelda.RData")


zelda <- zelda |> 
  #group_by(title == "Shigeru Miyamoto") |>  // wrong approch
  filter(str_detect(producers, "Shigeru Miyamoto")) |> 
  group_by(title) |> 
  filter(year == min(year)) |> 
  ungroup() |> 
  arrange(year, title, system)

save(zelda, file = "4.RData")

dim(zelda)
print(zelda)

load("zelda.RData")
str(zelda)
