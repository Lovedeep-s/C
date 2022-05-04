# Two Sample t Test
# When variance is equal
# Use pooled variance

mc1 <- c(150, 152, 154, 152, 151)
mc2 <- c(156, 155, 158, 155, 154)

# check equality of variance
var.test(x = mc1, y = mc2)

#Conduct t test with equal variance
t.test(x = mc1, y = mc2, var.equal = T)

#In this two sample t test the value of p is low, hence null gets rejected.
#There is a difference in the volumes of machine 1 and machine 2.

#Visual Representation of data
boxplot(mc1, mc2)

#When variance is NOT equal
mc1 <- c(150, 152, 154, 152, 151)
mc3 <- c(144, 162, 177, 150, 140)
var.test(x = mc1, y = mc3)
t.test(x = mc1, y = mc3, var.equal = F)
#In this two sample t test the value of p is greater than 0.05,
#hence we fail to reject the null hypothesis.

#There are not sufficient evidences to prove that machine 1 and machine 3 produce
#different volumes.