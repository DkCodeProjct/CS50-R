library(tidyverse)

load("candy.RData")
View(candy)
head(candy)

p <- ggplot(
  candy, 
  aes(x = price_percentile, y = sugar_percentile) 
) + 
  geom_jitter(
    color = "darkorchid", 
    fill = "orchid",
    shape = 21, # shape by num, read the shape doc
    size = 4
  ) + 
  labs(
    x = "Price", 
    y = "Sugar", 
    title = "Price and Sugar"
  ) + 
  theme_classic()

ggsave(
  "plot_point.png", 
  plot = p,
  width = 1200, 
  height = 900, 
  units = "px"
)
