df = read.csv("D:/BMS/7th SEM/DSR/Datasets/export.csv",sep=",")
summary(df)
plot(df$year,df$value,xlab="Year",ylab="Value")

df2 = read.delim("D:/BMS/7th SEM/DSR/Datasets/records.csv", header=TRUE, sep="\t")
df2

str(df2)

v <- c('True','True','False','True','False','False','True','True')
#typeof(v)

df2$Result<-v #df2["description"]=v does not work..

#class(df2)


write.csv(df2, file="modifiedfile.csv", row.names = FALSE)


#fifa <- read.csv("D:/BMS/7th SEM/DSR/Datasets/data.csv", sep=",")
#fh <-head(fifa)
#fh
#plot(fh$Overall,fh$Value,type="l", xlab="Overall",ylab="Value")