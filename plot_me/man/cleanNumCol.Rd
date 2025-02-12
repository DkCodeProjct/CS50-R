 \name{clean_numeric_col}
\alias{clean_numeric_col}
\title{Clean Numeric Columns in a Data Frame}
\description{
Function to clean and convert Open, High, and Low columns in a stock dataset to numeric values. 
It removes non-numeric characters, converts values to numeric, and drops rows with invalid data.
}
\usage{
clean_numeric_col(df)
}
\arguments{
  \item{df}{A data frame containing stock market data with at least Open, High, Low, and Date columns.}
}
\value{
A cleaned data frame where:
\itemize{
  \item Open, High, and Low columns are converted to numeric values.
  \item Non-numeric characters are removed.
  \item Rows with missing or invalid numeric values are dropped.
  \item Duplicate rows are removed.
}
}
\examples{
df <- data.frame(
  date = c("2024-02-01", "2024-02-02", "2024-02-03"),
  open = c("$120.5", "N/A", "130.75"),
  high = c("121.0", "125.5", "132.0"),
  low = c("118.3", "119.0", "128.5")
)
clean_df <- clean_numeric_col(df)
}

  