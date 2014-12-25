##################################################################################
## Lecture 02: Height data from lecture...
##
## @author: Alfonso de Uña
## @date: 23/12/2014
##
##################################################################################



#Get data from csv from cs-109
setwd("C:/Users/Alf/cs109/lectures/lecture02/")
data <-read.csv(file="Student_Basic_Info.csv", header=TRUE)
summary(data)

#We can observe different type of height. It's something normal when we have messy data.
show(data)
colnames(data) <- c("timestamp","height","type")

# Transform data. There are different formats in height because we get data in manual way.
# This kind of transformations is usual when colect data.
j <- as.numeric(data$height) > 100
data[j, "height"] <- as.numeric(data[j ,"height"]) * 0.393700787

#transform values from 1 to 10 and increase in ten size
value <- as.double(data$height) < 10
data[value, "height"] <- as.double(data[value ,"height"]) * 10

#transform in this notation a' b'' into inches number
i<-grepl("'", data$height)
data[i,"height"]<-gsub("'", "", data[i,"height"])

i<-grepl("cm", data$height)
data[i,"height"]<-gsub("cm", "", data[i,"height"])

i<-grepl(">", data$height)
data[i,"height"]<-gsub(">", "", data[i,"height"])

#temporal solution. Delete values
data <- data[-c(187,235,311,406),]
# remove na values
data<-data[complete.cases(data),]

#histagram
plot(data$height)
