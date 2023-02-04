data<-read.csv("hotels.csv")
a<-lm(data$days~data$price+data$total)
b<-coef(a)[1]
bx<-coef(a)[2]
abd<-b+bx
print(abd)
print(a)


