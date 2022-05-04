# First look of R
# Perform some basic operations
5+9
# Assign a value to a variable
a <- 6
# Assign values and perform operations
a <- 7
b <- 77
a + b

# Functions - Function(arguments)
a <- 2
print(a)
# R is case sensitive and it shows the options as we type

# Assign multiple values to a single variable
#It can be done using combine function of R
student.height <- c(101, 122, 115, 117, 103)
# This function basically forms a vector
student.height
# perform statistical operation on this data
mean(student.height)

# Saving files in R
# You can save R script file with .R extension
# Two commands you might want to check in this are getwd() and setwd()
getwd()
# setwd("C:/Users/")