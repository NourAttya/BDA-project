library(arules)
library (arulesViz)
library (ggplot2)

#clean environment 
rm(list=ls())
#set working directory
setwd("C:\\Users\\DELL\\Desktop\\Spring 2019\\Big Data\\Project\\BDA-Project")

dfm<-read.transactions("CtgsDataset.csv")
summary(dfm)
itemFrequencyPlot(dfm,topN=15)
rules<- apriori(dfm,parameter=list(supp=0.001,conf=0.03,minlen=2,maxlen=4,target="rules"))
summary(rules)
inspect(rules)
rule<-subset(rules,lift>2)
rules_by_lift <-sort(rule,by="lift")
inspect(rules_by_lift )
plotly_arules(rules)
