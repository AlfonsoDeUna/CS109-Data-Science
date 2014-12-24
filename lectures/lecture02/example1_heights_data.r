##################################################################################
## Lecture 02: Height data from lecture...
##
## @author: Alfonso de Uña
## @date: 23/12/2014
##
##################################################################################



#Get data from csv from cs-109
setwd("/home/cs109/lectures/lecture02/")
data <-read.csv(file="Student_Basic_Info.csv", header=TRUE)
summary(data)

#We can observe different type of height. It's something normal when we have messy data.
show(data)

# Transform data. There are different formats in height because we get data in manual way.
# This kind of transformations is usual when colect data.
