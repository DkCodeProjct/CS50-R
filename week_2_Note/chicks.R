
csv <- read.csv("chicks.csv")

head(csv)

View(csv)

mean(csv$weight, na.rm = TRUE)

csv[1:3, ]

filter <- csv$feed == "casein"
casin <- csv[filter, ]
mean(casin$weight, na.rm = TRUE)

which(!is.na(csv$weight))

csv <- csv[!is.na(csv$weight), ]

# we don't need to access weight using $ , Cos the csv is already given
csv <- subset(csv, !is.na(weight)) 
View(csv)              

soybeanChicks <- subset(csv, feed == "soybean")
soybeanChicks

rownames(csv) # so we missing NA val, and the row names count 6,8 and so on 

rownames(csv) <- NULL #this will reset the row names
rownames(csv)# now its count in Seqential order 

sum(is.na(csv$weight))
