911 call anaylsis <- function () {
read.csv ("Harvey.csv", header=TRUE)

mydata = read.csv("Harvey.csv") 

stripchart(Hours, method = "jitter", 
pch = 20, 
xlab = "No. of Hours")

} 