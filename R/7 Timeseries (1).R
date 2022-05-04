install.packages('nycflights13')
library(nycflights13)
nycflights13::flights
nycflights13::weather
attach(nycflights13::weather)
attach(nycflights13::flights)
weather
#Time Series
par(mfrow=c(1,1))
plot(temp)

#Histograms
hist(distance)
hist(distance, breaks = 10)

# Filter by airline
hist(distance[carrier == "UA"])
hist(distance[carrier == "AA"])

#Box and Whisker Plot
boxplot(distance)

#Filter by airline
boxplot(flights$distance[flights$carrier == "UA"])

#Two box plots side by side
par(mfrow=c(1,2))
boxplot(distance[carrier == "UA"], main="UA")
boxplot(distance[carrier == "AA"], main="AA")

#Two box plots side by side with equal scale
par(mfrow=c(1,2))
boxplot(distance[carrier == "UA"], main="UA", ylim = c(0,5000))
boxplot(distance[carrier == "AA"], main="AA", ylim = c(0,5000))

#Two histograms and two box plots
par(mfrow=c(2,2))
boxplot(distance[carrier == "UA"], main="UA", ylim = c(0,5000))
boxplot(distance[carrier == "AA"], main="AA", ylim = c(0,5000))

hist(distance[carrier == "UA"], main="UA", 
     breaks = c(0, 1000, 2000, 3000, 4000, 5000),
     xlim = c(0,5000), ylim = c(0,30000))
hist(distance[carrier == "AA"], main="AA", 
     breaks = c(0, 1000, 2000, 3000, 4000, 5000),     
     xlim = c(0,5000), ylim = c(0,30000))

#Box plots of distance by carrier
par(mfrow=c(1,1))
boxplot(distance ~ carrier)