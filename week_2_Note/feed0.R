

csv <- read.csv("chicks.csv")
csv <- subset(csv, !is.na(weight))

feed_op <- unique(csv$feed)
cat(feed_op, sep = "\n")

formatOp <- paste0(1:length(feed_op), ". ", feed_op)

feedChoic <- as.integer(readline("feed type: "))

if (feedChoic < 1 || feedChoic > length(feed_op)) {
  cat("invalid op")
} else {
  selectOp <- feed_op[feedChoic]
  print(subset(csv, feed == selectOp))
}