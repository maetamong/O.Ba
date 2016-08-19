library('xlsx')
library(devtools)
DF1<-read.xlsx('/home/maetamong/banana/O.Ba/World_Musa_Import_2000_2016.xlsx', sheetName="품목별 국가별  수출입실적")
import<-DF1[c(1,4,6)]
import <- import[-c(1,2,3,4),]
colnames(import)<-c("Year","Country","AmountofImport")
import2015 <- subset(import, subset=(Year==2015))
import2015 <-sapply(import2015[,3],function(x) gsub(",","",x))
import2015[,3]<-as.numeric(import2015[,3])
librart(rCharts)
import2015 <- subset(import2015, subset=(AmountofImport>0.0))
import2015
import2015_graph <- nPlot(x="Country", y="AmountofImport", data=import2015, type='pieChart')
import2015_graph