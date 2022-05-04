installed.packages()
install.packages("nycflights13")
#remove.packages("nycflights13")
library(nycflights13)
nycflights13
nycflights13::flights
attach(nycflights13::flights)
plot(arr_delay,dep_delay)
