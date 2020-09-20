setwd("~/STA3126/mathematical-statistics")
lotto = read.csv("Lotto.csv", header = T)
head(lotto)

# cbind = combine column vectors
WN = cbind(lotto$X1, lotto$X2, lotto$X3, lotto$X4, lotto$X5, lotto$X6)
head(WN) # command + Enter

table(WN) # number of rounds to be selected as one of the winning numbers
dim(WN)[1]
nrow(WN) # total number of rounds

# relative frequencey = table winning number / total number of rounds
RF = table(WN) / nrow(WN)
RF # relative frequency of each numbers

barplot(RF) # barplot of relative frequencey

# h = horizontal line, col = color
# theoretical probability
abline(h = 6/45, col = 2) # y = a+bx # if we only use h = ? it becomes horizontal line


# simulate again because the data size is too small
# simulating lotto for next 100 years 

# integers from 1:45 and select six numbers randomly 
sample(1:45, 6)

# for the next 100 years 5200 rounds
for(i in 1:52*100) {
  WN = rbind(WN, sample(1:45, 6)) #generate numbers and attach to WN
}

RF = table(WN) / nrow(WN) # relative frequency
RF

barplot(RF) # barplot of relative frequencey
abline(h = 6/45, col = 2) # y = a+bx # horizontal line

# 900 years
# for the next 100 years 5200 rounds
for(i in 1:52*900) {
  WN = rbind(WN, sample(1:45, 6)) #generate numbers and attach to WN
}

RF = table(WN) / nrow(WN) # relative frequency
RF

barplot(RF) # barplot of relative frequencey
abline(h = 6/45, col = 2) # y = a+bx # horizontal line



