gradStudents = read.csv(file = file.choose())
data.frame(gradStudents)

gradYear <- c(gradStudents[,1])
doctors <- c(gradStudents[,2])
masters <- c(gradStudents[,3])
level <- c(gradStudents[,3], gradStudents[,2])

png(file = "gradStudentStats.png", width = 1800, height = 1000, units = "px", pointsize = 12)

plot(gradYear, masters, type = "b", col = "blue", ylim = c(0,1200),lwd = 3, xlab = "Graduation Year", ylab = "# of students")

phdNum = range(doctors)
lines(gradYear, doctors, col="red", type = "b", lwd = 3)
legend("topleft", c("Masters","PhD"), fill=c("blue", "red"))

title("Number of Carleton Doctorate Degrees Awarded By Year")

dev.off()