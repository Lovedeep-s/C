#BINOMIAL PROBABILITY DISTRIBUTION
#Fixed number of trials - n
#For each trial there are two possible outcomes
#Probability of success remains same for all trials
#Trials are independent of each other
#We are interested in : Probability of r number of successes in n trials

# 1. rbinom

rbinom(10,1,0.5)

rbinom(10,100,0.5)

# 2. pbinom

pbinom(3,10,0.5)
pbinom(3,10,0.5) - pbinom(2,10,0.5)
# 3. qbinom
qbinom(0.117,10,0.5)

# 4. dbinom
dbinom(3,10,0.5)

# Draw the probability distribution of the case of flipping 10 coins and 
#looking at the probabilities of various number of heads.
n <- c(1:10)
dbinom(n,10,0.5)
barplot(dbinom(n,10,0.5))

#Lets install Visualize package to have a better view of distributions 
install.packages("visualize")
library(visualize)
#probability of 5 or less heads in 10 flips of coin
visualize.binom(5,10,0.5)

#Probability of 5 or more heads in flipping 10 coins
visualize.binom(5,10,0.5, section="upper")

#Probability of heads between 4 and 5
visualize.binom(c(3,6),10,0.5, section = "bounded")

#Probability of 1 or less and 9 and more
visualize.binom(c(3,6),10,0.5, section = "tails")
