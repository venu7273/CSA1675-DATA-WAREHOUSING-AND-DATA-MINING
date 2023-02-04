library(arules)
data<-read.csv("hotels.csv")
a<-apriori(data,parameter=list(sup=0.3, conf=0.9))
print(a)