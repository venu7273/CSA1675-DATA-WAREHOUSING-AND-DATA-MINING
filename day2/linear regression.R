data<-read.csv("hotels.csv")
a<-lm(data$days~data$price)
A<- data.frame(data$price)
Result<- predict(a, A)
print(Result)

