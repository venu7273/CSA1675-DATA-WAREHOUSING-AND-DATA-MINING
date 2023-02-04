data<-read.csv("diabetes.csv")
scatter.smooth(data$BloodPressure,data$Age)
barplot(data$BloodPressure,data$Age)
hist(data$BloodPressure)

