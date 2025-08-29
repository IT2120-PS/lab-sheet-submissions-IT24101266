setwd("C:\\Users\\it24101266\\Desktop\\IT24101266")
getwd()
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE,sep = ",")
fix(Delivery_Times)
attach(Delivery_Times)

names(Delivery_Times)<-c("D_Time")
attach(Delivery_Times)
fix(Delivery_Times)
histogram<-hist(D_Time,main="Histogram for deliver times",breaks = seq(20, 70,length = 10),right = FALSE)

#Most of the data is at the low end, forming a peak on the left,and a few high values stretch the graph out to the right.


breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids

Classes <- c()

for(i in 1:length(breaks)-1){
  Classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}

cum.freq <- cumsum(freq)

new <- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  } else {
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new, type = 'l', main = "Cumulative Frequency Polygon for deliver times", xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))
