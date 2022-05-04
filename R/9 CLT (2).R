#Create 10,000 numbers with uniform distribution
r <- runif(10000)
hist(r)

#Check the mean and standard deviation of this population of 10,000 numbers.
meanr <- mean(r)
meanr
sdr <- sd(r)
sdr

#Draw four random samples from r and calculate mean
sample(r, 4)
mean(sample(r,4))

#Draw 4 samples from the uniformly distributed population r, 1000 times and 
#take mean of these and draw the histogram of these sample means
cl4 <- mean(sample(r, 4))

for (i in 1:1000) {
  cl4 <- c(cl4, mean(sample(r, 4)))
}
hist(cl4)

#Check the mean and standard deviation of these sample means which have been 
#stored in the vector cl4
meancl4 <- mean(cl4)
meancl4
sdcl4 <- sd(cl4)
sdcl4

#Now instead of taking 4 samples at a time, lets draw 9 samples at a time.
cl9 <- mean(sample(r, 9))

for (i in 1:1000) {
  cl9 <- c(cl9, mean(sample(r, 9)))
}
hist(cl9)
meancl9 <- mean(cl9)
meancl9
sdcl9 <- sd(cl9)
sdcl9

#Lets repeat the sample process with 100 samples drawn at a time.
cl100 <- mean(sample(r, 100))
for (i in 1:100) {
  cl100 <- c(cl100, mean(sample(r, 100)))
}
hist(cl100)
meancl100 <- mean(cl100)
meancl100
sdcl100 <- sd(cl100)
sdcl100

#Summarize Central Limit Theorem on a Sample Chart
par(mfrow = c(1,1))

hist(r, main = "1 Sample")
mtext(sdr, side=3)
mtext(meanr, side=4)

hist(cl4, main = "4 Samples")
mtext(sdcl4, side=3)
mtext(meancl4, side=4)

hist(cl9, main="9 samples")
mtext(sdcl9, side=3)
mtext(meancl9, side=4)

hist(cl100, main="100 sample")
mtext(sdcl100, side=3)
mtext(meancl100, side=4)

#Refine: Numbers have been rounded, x axis here has equal scale for all plot.
par(mfrow = c(2,2))
hist(r, main = "1 Sample", xlim = c(0,1.0))
mtext(round(sdr,2), side = 3) 
mtext(round(meanr,2), side=4)

hist(cl4, main = "4 Samples", xlim = c(0,1.0))
mtext(round(sdcl4,2), side=3)
mtext(round(meancl4,2), side=4)

hist(cl9, main="9 samples", xlim = c(0,1.0))
mtext(round(sdcl9,2), side=3)
mtext(round(meancl9,2), side=4)

hist(cl100, main="100 sample", xlim = c(0,1.0))
mtext(round(sdcl100,2), side=3)
mtext(round(meancl100,2), side=4)