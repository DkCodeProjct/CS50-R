# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyverse)

df <- read.csv("mental_health_data.csv")
head(df)

df$Date <- as.Date(df$Date)

p <- ggplot(data = df) +
  geom_line(aes(x = Date, y = StressScore, color = "Stress"), linetype = "dashed") +
  geom_line(aes(x = Date, y = AnxietyScore, color = "Anxiety"), linetype = "dotted") +
  geom_line(aes(x = Date, y = MoodScore, color = "Mood"), linetype = "solid") +
  
  labs(
    x = "Date",
    y = "Score (0-100)",
    title = "Mental Health Scores Over Time",
    color = "Metric"
  ) +
  
  scale_color_manual(values = c("Stress" = "red", "Anxiety" = "blue", "Mood" = "green")) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  
  geom_hline(yintercept = 80, linetype = "dashed", color = "black", size = 1)

ggsave(
  "visualization.png", 
  plot = p, 
  width = 1200, 
  height = 900, 
  units = "px"
  
)





