#Descriptive statistics using psych package.
install.packages("psych")
library(psych)
#For data we will use the New York airport flight data. 
#Load the package using library() function 
#and then attach the flights data frame.
#install.packages("nycflights13")
library(nycflights13)
attach(nycflights13::flights)

#Lets look at the first 6 records using the head() function.
head(nycflights13::flights)
summary(distance)  #Summary is the R base function.

#describe is the function in psych package. Lets use the describe
#function for descriptive statistics of the distance column.
describe(distance)

#Using describe() function for multiple columns. All columns are first combined 
#using cbind() function and stored in a separate data frame.
demo <- cbind(arr_delay, dep_delay, distance)
describe(demo)

#To have better clarity, we can assign column names to these three columns 
#and then use the describe function.
colnames(demo) <- c('Arrival delay', 'Departure Delay', 'Distance Travelled')
describe(demo)

#How to group descriptive statistics
describeBy(distance, group=carrier)


