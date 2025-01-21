
visitors <- read.csv("visitors.csv")
first = next(iter(visitors))
last = next(iter(reversed(visitors)))
print("First:", first)
print("Last:", last)
