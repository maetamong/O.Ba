library(rCharts)
DF <-read.csv ('/home/maetamong/banana/O.Ba/Phil_Banana_Region_Production.csv')
DF2<-subset(DF, subset=(Year<=2013))
#DF2
test <- nPlot(Production~Year, data=DF2, group="Region", type="stackedAreaChart")
test

