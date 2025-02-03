library(tidyverse)
library(tidyr) 
 
df <- read_file("lyrics/ksi.txt")

lower <- str_to_lower(df)

clean <- str_remove_all(lower, "[^a-z\\s]")  # Re [. and special char]
clean <- str_remove_all(clean, "[a-z]+-[a-z]+") # rm wordslike "yet-yet"
clean <- str_remove_all(clean, "[a-z]+\\([a-zA-Z]+\\)") # rm patters

words <- str_split(clean, "\\s+")

vec <- unlist(words)
#vec

tible <- as_tibble(vec) |> 
  rename(words = value) |> 
  group_by(words) |> 
  summarise(count = n()) |> 
  arrange(desc(count))
#tible

filter_tible <- tible |> 
  filter(count > 2)
  
filter_tible 

p <- ggplot(
  filter_tible,
  aes(x = reorder(words, -count), y = count, )
) +
  geom_col(
    aes(fill = words)
  ) + 
  
  scale_fill_viridis_d("Words") + 
  scale_y_continuous(limits = c(0, 20)) + 
  labs(
    x = "Words", 
    y = "Count", 
  ) + 
  
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
 

ggsave(
  "lyrics.png", 
  plot = p, 
  width = 1200, 
  height = 900,  
  units = "px"
)




