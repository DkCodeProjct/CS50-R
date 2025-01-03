
csv <- read.csv("tests.tsv", sep = "")

#print(head(csv))

unique(csv$gender)

#factor int to Str
csv$gender <- factor(
  csv$gender,
  labels = c("Male", "Female", "Unanswered", "Other")
)

#assign Val
csv$Extroversion <- round((csv$E1 + csv$E2 + csv$E3) / 15, digits = 2)
csv$Neuroticism <- round((csv$N1 + csv$N2 + csv$N3) / 15, digits = 2)
csv$Agreeableness <- round((csv$A1 + csv$A2 + csv$A3) / 15, digits = 2)
csv$Conscientiousness <- round((csv$C1 + csv$C2 + csv$C3) /15, digits = 2)
csv$openness <- round((csv$O1 + csv$O2 + csv$O3) / 15, digits = 2)

write.csv(csv, "analysis.csv", row.names = FALSE)
