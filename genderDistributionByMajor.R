library(lattice)

students = read.csv(file = "C:\Users\carso\OneDrive\Documents\GitHub\studentStats\studentStats\carletonStudentGenders")

programs <- c(students[1])
studentMatrix <- as.matrix(students[-c(1, 5)])
studentMatrix2 <- t(studentMatrix)
proportions <- prop.table(studentMatrix2)

png(file = "genderDistributionStats.png", width = 2600, height = 6500, units = "px", pointsize = 56)
barplot(prop.table(studentMatrix2, 2),col = c("slateblue", "palevioletred", "green"), ylab = "Degree program", xlab = "Proportion of Students", main = "Gender Distribution by Program for 2019 Full-Time Undergraduates at Carleton", names.arg = programs, horiz = TRUE)

legend(c(1.2,1.2), c("male", "female", "undeclared"), cex = 1.3, fill = c("slateblue", "palevioletred","green"))

dev.off()