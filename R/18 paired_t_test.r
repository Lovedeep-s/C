#Paired t test
bp.before <- c(120, 122, 143, 100, 109)
bp.after <- c(122, 120, 141, 109, 109)

t.test(x = bp.before, y = bp.after, paired = T)
#Since the value of p is greater than 0.05, we fail to reject the null 
#hypothesis. There are not enough evidences to prove that this medicine has any 
#effect on the blood pressure.

#visualize
bp.diff <- bp.after - bp.before
bp.diff
boxplot(bp.diff, main= "Effect of Medicine on BP", ylab = "Post Medicine -BP Difference")