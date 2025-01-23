
process_csv <- function(csv, year, output_csv) {
  df <- read.csv(csv)
  df$sum <- apply(df[, -1], MARGIN = 1, FUN = sum)
  df$year <- year
  write.csv(df, output_csv, row.names = FALSE)
  return(df)
}

df0 <- process_csv(csv = "2020.csv", year = 2020, output_csv = "df0.csv")
df1 <- process_csv(csv = "2021.csv", year = 2021, output_csv = "df1.csv")
df2 <- process_csv(csv = "2022.csv", year = 2022, output_csv = "df2.csv")
df3 <- process_csv(csv = "2023.csv", year = 2023, output_csv = "df3.csv")
df4 <- process_csv(csv = "2024.csv", year = 2024, output_csv = "df4.csv")

#head(df0[, -1])
#head(df0)


 