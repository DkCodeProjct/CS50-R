library(tidyverse)

load("anita.RData")
head(anita)

p <- ggplot(
  anita, 
  aes(x = timestamp, y = wind)
) + 
  geom_line(
    color = "deepskyblue", 
    linetype  = 1, 
    linewidth = 1
  ) + 
  
  geom_point(
    color = "darkblue", 
    size = 2.5
  ) + 
  
  geom_hline(
    linetype = 3, 
    yintercept = 65
  ) +
  
  labs(
    x = "Timestamp", 
    y = "Wind Spees(Knots)", 
    title = "Huarricane Anita "
  ) + 
  theme_classic()
ggsave(
  "line_plot.png", 
  plot = p, 
  width = 1200, 
  height = 900, 
  units = "px"
)