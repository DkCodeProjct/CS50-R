random_character <- function() {
  # TODO: Return one random letter
  return(cat(sample(letters, size = 1), sep = ""))
}

print_sequence <- function(length) {
  # TODO: Print a random sequence of specified length
  for (i in 1:length) {
    char <- random_character()
    cat(char) 
    Sys.sleep(0.25)
  }  
}

print_sequence(20)

