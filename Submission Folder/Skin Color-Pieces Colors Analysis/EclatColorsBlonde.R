library (arulesViz)
library (ggplot2)

#clean environment 
rm(list=ls())
#set working directory
setwd("D:\\Big Data\\Project\\Final\\BDA-project-master\\BDA-Project")

#Most frequent items in each category
dfm<-read.transactions("blonde.csv")
itemFrequencyPlot(dfm,topN=5,main="Blonde Colors",col="yellow")


dfm<-read.transactions("normal.csv")
itemFrequencyPlot(dfm,topN=5,main="Brunette Colors",col="brown")
