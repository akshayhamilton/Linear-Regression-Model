#Trying to find out the relationship between age and lung capacity using linear regression
#Lung Capacity is our outcome or Y variable. Whereas, an individual's age is 
#our X or independent variable.
data<-read.csv(file.choose())
library(scales)
library(ggplot2)
#Correlation
cor(data$LungCap,data$Age) #Fairly High and positive relationship 

#Linear regression Model
LR<-lm(data$LungCap ~ data$Age)
summary(LR)
#ANOVA
anova(LR)
``

## Plots
plot(data$Age, data$LungCap, pch=21, main = "Regression Model", xlab = "Age", 
     ylab = "Lung Capacity", col.main="red", 
     col.axis="blue", col.lab="darkblue", xlim=c(0,20), 
     ylim=c(0,15), cex = 1.5)
abline(LR, col=2, lwd=2)