library (arulesViz)
library (ggplot2)

#clean environment 
rm(list=ls())
#set working directory
setwd("C:\\Users\\DELL\\Desktop\\Spring 2019\\Big Data\\Project\\BDA-Project")

#Most frequent items in each category
dfm<-read.transactions("jackets.csv")
itemFrequencyPlot(dfm,topN=5,main="Jackets",col="red")


dfm<-read.transactions("shoes.csv")
itemFrequencyPlot(dfm,topN=5,main="Shoes",col="blue")

dfm<-read.transactions("bags.csv")
itemFrequencyPlot(dfm,topN=5,main="Bags",col="green")

dfm<-read.transactions("tops.csv")
itemFrequencyPlot(dfm,topN=5,main="Tops",col="yellow")

dfm<-read.transactions("sweaters.csv")
itemFrequencyPlot(dfm,topN=5,main="Sweaters",col="orange")
