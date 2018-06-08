# High Water Rescues Analysis.R
# By John D. Harden at the Houston Chronicle

#####################################################################################################################################

#######################################################################################################################################

library (tidyverse)
library (ggplot2)
library (tidyr)
library (dplyr)
library (readr) 

setwd("~/Documents/Harvey911")
HarveyData <- read.csv ("R function.csv", stringsAsFactors=FALSE, na.strings="#VALUE!", header = TRUE)

head(HarveyData)
summary(HarveyData)
str(HarveyData)

##Find the average time it took to close calls 

ggplot(HarveyData, aes(y = Hours, x = Disp_date)) + 
stat_summary(fun.y="mean", geom="bar")


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
