# FACTORS
student.height <- c(100, 106, 121, 111, 109, 111, 103, 117, 114)
summary(student.height)

# Finding summary of characters
airports <- c('DEL', 'CAL', 'NYC', 'CAL', 'DEL', 'DEL')
summary(airports)

# Factor changes the characters to categories
# Levels of Data: Nominal, Ordinal, Interval, Ratio
# Nominal is category without order
# Ordinal is category with order.

#Change items in the vector to factors
airports <- c('DEL', 'CAL', 'NYC', 'CAL', 'DEL', 'DEL')
airport.fact <- factor(airports)
summary(airport.fact)

# Example of Ordinal data (Months have an order … Jan, Feb, March …)
birth.month = c("March","April","January","November","January","September","October","September","November","August", "January","November","November","February","May","August", "July","December","August","August","September","November", "February","April")
summary(birth.month)
birth.month.fact <- factor(birth.month)
summary(birth.month.fact)

# Putting this summary in an order … Use ordered = TRUE and provide levels
birth.month.fact <- factor(birth.month, ordered = TRUE, levels = c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"))
summary(birth.month.fact)
# other way to order
table(birth.month.fact)

#LISTS
# lists are used to place number of items in a bundle.
a <- c(1,4,6)
b <- c('Red', 'Green')
c <- "Welcome"
my.list <- list(a,b,c)
my.list
#naming the list items
my.list.n <- list(Pieces = a, Colors = b, Message = c)
my.list.n

# Calling a specific data item in the list
my.list.n[1]
my.list.n['Colors']

# other way
my.list.n$Colors

# Calling specific item within the item of list
my.list.n$Colors[1]

#List can include matrix and data frames as well

# MATRIX

# Matrix has two dimensional data of similar type
stu.hours <- c(20,24,46,62,22,37,45,27,65,23)
stu.marks <- c(40,55,69,83,27,44,61,33,71,37)

# Matrix function using just stu.hours
stu.matrix <- matrix(stu.hours)
stu.matrix

# Join two columns (stu.hours,stu.marks) as stu.data
stu.data <- c(stu.hours,stu.marks)
stu.data
stu.matrix <- matrix(stu.data)
stu.matrix

# Above provide 20 values in a single column instead of two separate columns.
#Add the argument nrows to create 10 rows
stu.matrix <- matrix(stu.data,  byrow = FALSE, nrow = 10)
stu.matrix
# Byrow is FALSE by default

# Naming rows and columns Add Hours and Marks as header, and add row numbers from 1 to 10
colnames(stu.matrix) <- c('Hours', 'Marks')
rownames(stu.matrix) <- c(1:10)
stu.matrix

# Selecting an element from matrix
stu.matrix[4,2]

# Importing a CSV file. The csv file should be located in your default directory
a <- read.csv("Student Marks.csv")
a

# DATA FRAMES
# Here we can have mixture of data types, unlike matrix.
stu.name <- c('Mr1', 'Ms2', 'Ms3', 'Mr4', 'Ms5', 'Ms6', 'Mr7', 'Ms8', 'Mr9', 'Mr10')
stu.hours <- c(20,24,46,62,22,37,45,27,65,23)
stu.marks <- c(40,55,69,83,27,44,61,33,71,37)
stu.male <- c(T,F,F,T,F,F,T,F,T,T)

# Combine these four vectors as a data frame
stu.data <- data.frame(stu.name, stu.hours, stu.marks, stu.male)
stu.data

# Summary
summary(stu.data)

# For a specific column use $ after data frame name and select column
mean(stu.data$stu.hours)

# Finding item in 3rd row, first column (name of third student)
stu.data[3,1]

# Finding all values in row three
stu.data[3,]

#Finding all values in the second column
stu.data[,2]

# Built in Data Frames in R
data()
# Using head will provide first rwo only, instead of showing 100s of items in the data frame.
head(BOD, n= )
help(head)
head(iris, n = 10)
iris
