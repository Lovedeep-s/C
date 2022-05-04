#Standard Normal Distribution has mean=0, sd=1 and is the default
#rnorm

#Randomly generated samples from standard normal distribution (mean = 0, sd = 1)
rnorm(10)

#Randomly generated samples from normal distribution (mean = 100, sd = 1)
x=rnorm(10, mean=100, sd=1)

#At z=0 the value of probability is 0.5
pnorm(0)

#At z=-1.96, the probability is 0.025
pnorm(-1.96)

#qnorm: At what value of z the area on left is 5%
qnorm(0.05)

#dnorm: Y axis value for z=0
dnorm(0)

#Lets use dnorm to draw the normal distribution
zvalue <- seq(-4.0,4.0, by=0.1)
zvalue
dnorm(zvalue)
plot(zvalue, dnorm(zvalue))
plot(zvalue, dnorm(zvalue), type="l")

#Using Visualize package
library(visualize)
visualize.norm(-2)
visualize.norm(-3)
visualize.norm(c(2,-2), section="tails")
visualize.norm(stat = 76, mu = 75, sd = 1, section = "upper")
visualize.norm(stat = 76, mu = 75, sd = 1, section = "lower")
visualize.norm(stat = c(74,75), mu = 75, sd = 1, section = "bounded")
visualize.norm(stat = c(73,76), mu = 75, sd = 1, section = "tails")
