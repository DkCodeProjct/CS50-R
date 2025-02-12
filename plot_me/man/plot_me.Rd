\name{plotme}
\alias{plotme}
\title{Plot Stock Prices Over Time}
\description{
Function to read, clean, and visualize stock price data from a CSV file. It extracts the Date, Open, High, and Low columns, processes them, and generates a line plot.
}
\usage{
plotme(csv)
}
\arguments{
  \item{csv}{A character string specifying the path to the CSV file containing stock market data.}
}
\value{
A ggplot2 object representing the stock price trends over time. Additionally, the generated plot is saved as "visualize.png" in the working directory.
}
\examples{
# Example usage
plotme("stock_price.csv")
}
