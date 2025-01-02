

#filPath <- readline("enter .csv: ")
#userCsv <- read.csv(filPath)
#print(paste0("num of pit stops", ncol(userCsv$lap)))
#csv <- read.csv("/home/dkcode/Documents/pitshop/miami.csv")
#print(nrow(csv))
#print(min((csv$time)))
#print(max(csv$time))
#print(sum(csv$time))


filePath <- readline("Enter .csv: ")
useCsv <- read.csv(filePath)


print(paste0("Total Num of Pit shop: ", nrow(useCsv)))
print(paste0("Duration of the Shorterst Pit: ", min(useCsv$time)))
print(paste0("Longest Pitshow: ", max(useCsv$time)))
print(paste0("Total Pit shop Time: ", sum(useCsv$time)))
