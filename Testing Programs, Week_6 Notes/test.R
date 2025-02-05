
 
avg <- function(x) {
  if (any(is.na(x))) {
    warning("`x` contain NA val")
    return(NA)
  }
  if (!is.numeric(x)) {
    stop("`x` must be a num vec")
  } 
  sum(x) / length(x)
}

