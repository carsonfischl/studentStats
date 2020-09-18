library(lattice)

setwd("~\Users\carso\")
students = read.csv(file = file.choose())
data.frame(students)

programs <- students[,1]
years <- c("First Year","Second Year", "Third Year", "Fourth Year")

studentMatrix <- matrix(c(students[,2], students[,3], students[,4], students[,5]), nrow = 4, ncol = 30, byrow = TRUE)

studentMatrix2 <- t(studentMatrix)

png(file = "studentMajorStats.png", width = 5500, height = 2000, units = "px", pointsize = 12)

barplot(studentMatrix,xlab = "Degree program", ylab = "NumberOfStudents",main = "StudentEnrollment by year standing and program 2019", names.arg = programs,col = c("orange", "red","green", "blue"))
legend("topright", years, cex = 10.3, fill = c("orange", "red","green", "blue"))

dev.off()