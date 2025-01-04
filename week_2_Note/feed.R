# chicks CSV
csv <- read.csv("chicks.csv")
csv <- subset(csv, !is.na(weight)) # what are the not NA val

#determine the feed option
#uniq will get every feed types in feed
feed_op <- unique(csv$feed) 

#prompt user
#cat("1.", feed_op[1], "\n")
#cat("2.", feed_op[2], "\n")
#cat("3.", feed_op[3], "\n")
#cat("4.", feed_op[4], "\n")
#cat("5.", feed_op[5], "\n")
#cat("6.", feed_op[6], "\n")
formatOp <- paste0(1:length(feed_op), ". ", feed_op)
cat(formatOp, sep = "\n")
feed_choic <- as.integer(readline("Feed type: ")) 

# use || to check Single True/False Value
if (feed_choic < 1 || feed_choic > length(feed_choic)) {
  cat("Invalid Choice")
} else {
  selctFeed <- feed_op[feed_choic]
  print(subset(csv, feed == selctFeed))
}