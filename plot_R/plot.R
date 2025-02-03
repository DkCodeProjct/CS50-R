library(tidyverse)

data <- read.csv("votes.csv")



p <- ggplot(
  data, 
  aes(x = candidate, y = votes)) + 
  geom_col(
    aes(fill = candidate),
    show.legend = FALSE
  )+
  scale_fill_viridis_d("Candidate") +  
  scale_y_continuous(limits = c(0, 250)) + 
  labs(
    x = "Candidate", 
    y = "Votes", 
    title = "Election Results"
  ) + 
  theme_classic()
  
ggsave(
  "votes.png", 
  plot = p, 
  width = 1200, 
  height = 900,  
  units = "px"
)
