#We will discuss three main types of plots 
#Scatter Plot
#Histogram
#Box Plot (also called Box-and-Whisker Plot)

a <- c(10,13,14,10,12,17)
b <- c(15,17,19,13,13,19)
plot(a,b)

#Points or line plot
a <- c(10,13,14,10,12,17)
b <- c(15,17,19,13,13,19)
plot(a,b)
plot(a,b,type = "l")
plot(a,b,type = "p")
plot(a,b,type = "b")

installed.packages()
install.packages("nycflights13")
#remove.packages("nycflights13")
library(nycflights13)
nycflights13
nycflights13::flights

attach(nycflights13::flights)
plot(arr_delay,dep_delay)

#Adding header to the plot
plot(arr_delay,dep_delay, main="Arrival vs Departure Delay")

#Adding x and y axis labels
plot(arr_delay,dep_delay, main="Arrival vs Departure Delay", 
     xlab="Arrival Delay", ylab="Departure Delay")

#Plotting a line on top of the plot
plot(arr_delay,dep_delay, main="Arrival vs Departure Delay", 
     xlab="Arrival Delay", ylab="Departure Delay")
abline(0,1)
abline(0,0)

#Changing Plot Character (pch=) 1. Circle 2. Triangle 3. Plus 4. Cross 5. Diamond, 6. Reverese triangle 7. Box and crossed
plot(arr_delay,dep_delay, main="Arrival vs Departure Delay", 
     xlab="Arrival Delay", ylab="Departure Delay", pch=3)

# Changing plot character to any specialized symbol
plot(arr_delay,dep_delay, main="Arrival vs Departure Delay", 
     xlab="Arrival Delay", ylab="Departure Delay", pch="s")

#Filtering data
plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"])
points(arr_delay[carrier=="AA"],dep_delay[carrier=="AA"], pch=3)

plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], col="Red")
points(arr_delay[carrier=="AA"],dep_delay[carrier=="AA"], col="green")

#Partition - Multi Frame Rows
par(mfrow=c(1,2))
plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], main="UA")
plot(arr_delay[carrier=="AA"],dep_delay[carrier=="AA"], main="AA")

#Equal scale for x and y axis.
par(mfrow=c(1,2))
plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], main="UA", 
     xlim=c(0,1000), ylim=c(0,1000))
plot(arr_delay[carrier=="AA"],dep_delay[carrier=="AA"], main="AA",
     xlim=c(0,1000), ylim=c(0,1000))

#Restoring the frame for a single plot
par(mfrow=c(1,1))
plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], main="UA")

#Adding text and lines
plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], 
     main="Arrival vs Departure Time")


text(x=100, y=400, label="United Airways")
text(x=400, y=0, adj=1, label="Statistics")


mtext(text="UA = United Airways", side=3)
mtext(text="in minutes", side=2, adj=1)

abline(h=250)
abline(v=250)

abline(h=0)
abline(v=0)

#Changing the size and color of points using ‘cex’ and ‘col’ argument
# Normal size point
plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], 
     main="Arrival vs Departure Time")

# Half size point
plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], 
     main="Arrival vs Departure Time", cex=0.5)

# Color to red
plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], 
     main="Arrival vs Departure Time", cex=0.5, col="red")

# add green points on top of the UA plot for AA
points(arr_delay[carrier=="AA"],dep_delay[carrier=="AA"], cex=0.5, col="green" )

#Change the color and font of labels

plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], 
     main="Arrival vs Departure Time", cex=0.5, col="red", 
     col.main="red", font.main=3)

#Change the font and color of text as well
plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], 
     main="Arrival vs Departure Time", cex=0.5, col="red", 
     col.main="red", font.main=3, col.lab="green", font.lab=4)
text(100,400, "United Airways", col="green", font=2)

text(100,300, "United Airways", col="red", font=2, cex=2)

#Pairs of Scatter plots
pairs(~ arr_delay + dep_delay)
pairs(~ distance + dep_delay + arr_delay + air_time)



