#Poisson Distribution

# Outcomes are success or failure
# Average number of successes (mu) in the specific region (time, location) are known
# Outcomes are random. Occurance of one outcome does not affect the outcome of the other.
# Outcomes are rare compared to possible outcomes
# P(x, mu)

# rpois, ppois, qpois and dpois, just like Binomial distribution

#Question: On a booking counter, on the average 3.6 people coming every 10 
#minutes on weekend. What is the probability of getting 7 people in 10 minutes?
  
dpois(7,3.6)

#or

ppois(7,3.6) - ppois(6,3.6)

#Plot probability distribution for this example

a <- c(0:10)
dpois(a, 3.6)
barplot(dpois(a,3.6))

#Probability of 7 or less in this example using visualize package
library(visualize)
visualize.pois(7,3.6)

#Probability of 5 or more
visualize.pois(5, 3.6, section = "upper")

#Probability of 0 or more than 7
visualize.pois(c(0,8), 3.6, section="tails")

#Probability of exactly 7
visualize.pois(c(7,7), lambda = 3.6, section = "bounded")
