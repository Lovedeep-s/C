#Getting Help in R- Various ways to get in R. Following command will provide 
#help in the Help window.
help(median)
??median

# DESCRIPTIVE STATISTICS
# Measurement of Central tendency
# Mean
student.height <- c(100, 106, 121, 111, 109, 111, 103, 117, 114)
mean(student.height)
# Some blank fields
student.height1 <- c(100, 106, 121, 111, 109, 111, 103, 117, 114, NA, 1047)
mean(student.height1)
# Need to remove NA otherwise mean will be NA
student.height1 <- c(100, 106, 121, 111, 109, 111, 103, 117, 114, NA, 1047)
mean(student.height1, na.rm = TRUE)
# Problem of Outliers - In R there is an option to trim the data. 
#The argument trim = 0.1 (for example) will remove 10% data from the top and 10% 
#from the bottom.
student.height1 <- c(100, 106, 121, 111, 109, 111, 103, 117, 114, NA, 1047)
mean(student.height, trim = 0.1, na.rm = TRUE)

# Median
student.height <- c(100, 106, 121, 111, 109, 111, 103, 117, 114, 115)
median(student.height)

# MODE - There is no direct command in R to find the mode.
table(student.height)
a <- table(student.height)
sort(a)
# sort in decreasing order
a <- table(student.height)
sort(a, decreasing = TRUE)[1]

# Measurement of Variation

#Range
student.height <- c(100, 106, 121, 111, 109, 111, 103, 117, 114)
range(student.height)

# Interquartile range - First find quartiles
quantile(student.height)
IQR(student.height)

# Standard Deviation
sd(student.height)