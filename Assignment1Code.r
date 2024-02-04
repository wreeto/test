rm(list=ls())
setwd("D:\\BusinessAnalytics\\Assignment1")

#reading the data
ThyroidData=read.csv("Thyroid_Diff.csv")

#Generating General summary Statistics from the Entire data
summary(ThyroidData)

#Generating cross proportion for two categorical variables "Gender" and "Smoking"
tempTable=table(ThyroidData$Gender,ThyroidData$Smoking)
round(prop.table(tempTable),3)

#Generating summary statistics for quantitative variable "Age""
summary(ThyroidData$Age)

#Transforming categorical variable into binary variable
ThyroidData$genderToBin=ifelse(ThyroidData$Gender=="M", 1,0)

# Transformation of quantitative variable "Age" to a categorical variable
ThyroidData$agebracket=ifelse(ThyroidData$Age<19,"Minor",ifelse(ThyroidData$Age>59,"Senior","Adult"))

#Plotting Histogram of quantitative variable "Age"
AgeHist=hist(ThyroidData$Age)

#Creating Scatterplot for Age and Binary version of "Gender"
plot(ThyroidData$genderToBin, ThyroidData$Age)
