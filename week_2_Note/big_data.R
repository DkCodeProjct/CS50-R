
url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
vote <- read.csv(url)

#View(vote)

#nrow(vote)
#ncol(vote)

#vote$voter_category
#unique(vote$voter_category)

#unique(vote$Q22)
#unique(vote$Q21)

factor(
  vote$Q21,
  labels = c("Yes", "No", "Unsure/Undecide"), # c==Thats how we make vector in R
  exclude = c(-1) #remove this unkown val
)
