setwd("~/sehwaryu/STA3126")
lotto = read.csv("Lotto.csv", header = T)
head(lotto)

WN = cbind(lotto$X1, lotto$X2, lotto$X3, lotto$X4, lotto$X5, lotto$X6)
head(WN) # command + Enter

table(WN) # number of rounds to be selected as one of the winning numbers
dim(WN)[1]
nrow(WN) # total number of rounds

RF = table(WN) / nrow(WN) # relative frequency
RF

barplot(RF) # barplot of relative frequencey
abline(h = 6/45, col = 2) # y = a+bx # horizontal line

sample(1:45, 6)

#927 + 5200 = 6127
for(i in 1:52*100) {
  WN = rbind(WN, sample(1:45, 6))
}

RF = table(WN) / nrow(WN) # relative frequency
RF

barplot(RF) # barplot of relative frequencey
abline(h = 6/45, col = 2) # y = a+bx # horizontal line

set.seed(1004)
samp = matrix(0, 180, 6) # 100 x 6 matrix of 0's
for (i in 1:100) {
  samp[i,] = sample(1:45,6)
}

table(samp) # number of rounds for each number to be selected out of 100

# How many rounds the number 45 was selected out of 100 rounds?
