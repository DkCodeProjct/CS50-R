  
# GPT gen code.
#    // write test codes
linear_regression <- function(x, y) {
  # Check if x and y are numeric vectors
  if (!is.numeric(x) || !is.numeric(y)) {
    stop("Both x and y must be numeric vectors.")
  }
  
  # Check for NaN values
  if (any(is.nan(x)) || any(is.nan(y))) {
    stop("Input vectors must not contain NaN values.")
  }
  
  # Remove NaN values
  valid_data <- !is.na(x) & !is.na(y)
  x <- x[valid_data]
  y <- y[valid_data]
  
  # Ensure that x and y have the same length
  if (length(x) != length(y)) {
    stop("x and y must have the same length.")
  } 
  
  # Calculate the coefficients (slope and intercept)
  n <- length(x)
  slope <- (n * sum(x * y) - sum(x) * sum(y)) / (n * sum(x^2) - (sum(x))^2)
  intercept <- (sum(y) - slope * sum(x)) / n
  
  # Return the model parameters
  return(list(slope = round(slope, 2), intercept = round(intercept, 2)))
}


