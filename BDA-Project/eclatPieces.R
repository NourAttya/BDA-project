Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre1.8.0_202') 
library("rCBA")
library (arulesViz)
library (ggplot2)

#clean environment 
rm(list=ls())
#set working directory
setwd("C:\\Users\\DELL\\Desktop\\Spring 2019\\Big Data\\Project\\BDA-Project")
dfm<-read.transactions("Pieces_Stats.csv")
## Mine itemsets with minimum support of 0.1 and 5 or less items
itemsets <- eclat(dfm,
                  parameter = list(supp = 0.001, maxlen = 5))
itemsets

## Create rules from the itemsets
rules <- ruleInduction(itemsets, dfm, confidence = .03)
rules
inspect(rules )

#rule<-subset(rules,lift>2)
#rules_by_lift <-sort(rule,by="lift")
#inspect(rules_by_lift )
