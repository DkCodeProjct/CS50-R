teaTypes <- c("Green", "Black", "Chamomile", "Rooibos")

tea_mat <- matrix(
  teaTypes, 
  nrow = 2, 
  ncol = 2, 
  byrow = TRUE
) 

rownames(tea_mat) <- c("yes", "no")
colnames(tea_mat) <- c("light", "bold")

getFlavor <- readline("Flavor: ")
if (getFlavor == "light") {
  getFlavor <- 1
} else if (getFlavor == "bold") {
  getFlavor <- 2
} else if (getFlavor == "Medium"){
  print("Enter either 'light' or 'bold' for flavor.")
  getFlavor <- NULL
}


getCafine <- readline("Cafine: ")
if (getCafine == "yes") {
  getCafine <- 1
} else if (getCafine == "no") {
  getCafine <- 2
} else if (getCafine == "Mayeb"){
  print("Enter either 'yes' or 'no' for flavor.")
  getFlavor <- NULL
}


print(tea_mat[getFlavor, getCafine])


