library("rpart")
library("rpart.plot")

play<-c('yes','no','yes','no','yes','yes','yes','yes','yes','no')
outlook<-c('rainy','rainy','overcast','sunny','rainy','sunny','rainy','sunny','overcast','sunny')
Temperature<-c('cool','cool','hot','mild','cool','cool','cool','hot','mild','mild')
Humidity<-c('normal','normal','high','high','normal','normal','normal','normal','high','high')
Wind<-c('FALSE','TRUE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','TRUE','TRUE')

play_dec<-cbind(play,outlook,Temperature,Humidity,Wind)
play_dec

play_dec=as.data.frame(play_dec)
play_dec

summary(play_dec)
fit=rpart(play ~ outlook + Temperature  +Humidity +Wind, method="class",
          data=play_dec, control=rpart.control(minsplit=1), parms=list(split='gini'))
fit
str(fit)

rpart.plot(fit,type=4,extra=1)
rpart.plot(fit,type=4,extra=2,clip.right.labs=FALSE,varlen=0,faclen=0)

newdata <- data.frame(outlook="rainy",Temperature="mild", Humidity="high", Wind = 'FALSE')
newdata
predict(fit, newdata = newdata, type= "prob")
  