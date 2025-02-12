\name{prep_csv} 
\alias{prep_csv}
\title{Prepare CSV}
\description{
Function to prepare a stock dataset CSV file by converting column names to lowercase, selecting relevant columns (Date, Open, High, Low), and formatting the Date column correctly.
}
\usage{
prep_csv(csv)
}
\arguments{
  \item{csv}{A character string specifying the path to the CSV file.}
}
\value{
A cleaned data frame containing only the Date, Open, High, and Low columns. The Date column is formatted correctly. Rows with invalid date values are removed.
}
\examples{
prep_csv("stock_price.csv")
}
