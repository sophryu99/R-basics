# Illustration of relative frequency converging to theoretical probability as the number of trial increases

# Quiz
set.seed(1004)

samp = matrix(0, 100, 6) # 100 x 6 matrix of 0's
for (i in 1:100) {
  samp[i,] = sample(1:45,6) # will save the result in the ith row of samp
}

# How many rounds the number 45 was selected out of 100 rounds?

tb = table(samp) # number of rounds for each number to be selected out of 100
RF = tb / nrow(tb)
barplot(RF)

