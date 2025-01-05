
csv <- read.csv("librarian/books.csv")

#  - The Writer 
#.//    author  :- [Mia Morgan’s]
author <- subset(csv, author == "Mia Morgan")
# author
w_title <- author$title
print("writer book: ")
print(w_title)

# - The Musician
#.//   topic: music
#.//   year: 1613
topic <- subset(csv, topic == "Music" & year == 1613)
m_title <- topic$title
print("musician book: ")
print(m_title)

#  - The Traveler 
#.//   authors:  Lysandra Silverleaf or Elena Petrova
#.//   year: 1775
authors <- c("Lysandra Silverleaf", "Elena Petrova") 
checkAuthor <- authors %in% subset(csv, year == 1775)
#checkAuthor
t_book <- subset(csv, year == 1775 & author == "Lysandra Silverleaf")
t_title <- t_book$title
print("traverler book: ")
print(t_title)


## - The Painter
##.//  topic: Art 
##.//  years:  1990, 1992, !1991
##.//  pages: 200:300

#years <- c(1990, 1992)
#topic <- years %in% subset(csv, topic == "Art")
#pages <- c(200:300) %in% csv$pages
# chk <- pages %in% subset(csv, topic == "Art")
artBooks <- subset(csv, topic == "Art")
artBooks <- subset(artBooks, year %in% c(1990, 1992))
artBooks <- subset(artBooks, pages >= 200 & pages <= 300)
#artBooks
p_title <- artBooks$title
print("painter book: ")
print(p_title)  
  

## - The Scientist
##.//  title: Quantum Mechanics
unique(csv$topic)  
topic <- subset(csv, topic == "Science")
titl <- topic$title
s_title <- grepl("Quantum Mechanics", titl)
print("scientist book: ")
print(titl[s_title])


## - The Teacher
##.//   topic: Education
##.//   year: 1700
##.//   home town: Zenthia
hmTownCsv <- read.csv("librarian/authors.csv")
authors_1 <- subset(hmTownCsv, hometown == "Zenthia") 
authorNm <- authors_1$author
#authorNm
detail <- subset(csv, topic == "Education" & year >= 1700 & year <= 1800)
#detail
#chk <- authorNm %in% detail$author
chk <- detail$title[detail$author %in% authorNm]
print("teacher book: ")
print(chk)


