library(dplyr)
library(tidyr)
library(stringr)

# Load the data
data <- read.csv("zelda.csv", stringsAsFactors = FALSE)

# Process the data
zelda <- data |> 
  rename_with(~ tolower(.)) |>  # Standardize all column names to lowercase
  mutate(role = tolower(role)) |>  # Convert role values to lowercase
  separate(release, into = c("year", "system"), sep = " - ", extra = "merge", fill = "right") |> 
  mutate(across(everything(), ~ str_trim(.))) |>  # Trim whitespace from all columns
  pivot_wider(
    names_from = role,
    values_from = names, 
    values_fn = function(x) paste(unique(x), collapse = ", ")  # Combine duplicates into a single string
  ) |> 
  select(title, year, system, directors, producers, designers, programmers, writers, composers, artists) |> 
  mutate(year = as.integer(year)) |>  # Ensure `year` is an integer
  as_tibble()

# Save the tibble to an RData file
save(zelda, file = "zelda.RData")

# Check the dimensions of the final tibble
dim(zelda)
