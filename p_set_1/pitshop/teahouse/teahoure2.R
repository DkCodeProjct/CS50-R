teaTypes <- c("Green", "Black", "Chamomile", "Rooibos")

#  tea matrix
tea_mat <- matrix(
  teaTypes, 
  nrow = 2, 
  ncol = 2, 
  byrow = TRUE
)

rownames(tea_mat) <- c("yes", "no")  # Caffeine
colnames(tea_mat) <- c("light", "bold")  # Flavor

getFlavor <- readline("Flavor: ")
if (tolower(getFlavor) == "light") {
  flavorIx <- "light"
} else if (tolower(getFlavor) == "bold"){
  flavorIx <- "bold"
} else {
  print("Enter either 'light' or 'bold' for flavor.")
  flavorIx <- NULL
}

getCafine <- readline("Caffeine: ")
if (tolower(getCafine) == "yes") {
  cafinIx <- "yes"
} else if (tolower(getCafine) == "no") {
  cafinIx <- "no"
} else {
  print("Enter either 'yes' or 'no' for Caffeine.")
  cafinIx <- NULL
}

if (!is.null(falvorIx) && !is.null(cafinIx)) {
  tea <- teaMat[cafinIx, flavorIx]
  print(paste("We reccomend", tolower(tea), "tea"))
} else {
  print("invalid input")

}










