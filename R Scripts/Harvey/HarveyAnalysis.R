# High Water Rescues Analysis.R
# By John D. Harden at the Houston Chronicle

#####################################################################################################################################

#######################################################################################################################################

library (tidyverse)

setwd("~/Documents/Harvey911")

911 call anaylsis <- function () {
read.csv ("Harvey.csv", header=TRUE)
summary(HarveyDataPlots)
mydata = read.csv("Harvey.csv") 
stripchart(Hours, method = "jitter", 
pch = 20, 
xlab = "No. of Hours")

} 

summary(HarveyDataPlots)

function(Harvey27) {
HurricaneByDay <- filter(HarveyDataPlots, Day == 27) 
ggplot(HurricaneByDay, aes(x=test_X, y=test_Y, color = Hour), alpha = 1/3) + 
geom_point()

}
