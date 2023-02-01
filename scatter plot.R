data<-read.csv("hotels.csv")
scatter.smooth(data$price,data$total)