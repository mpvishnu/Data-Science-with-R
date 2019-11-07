count<-c(9,25,15,2,14,25,24,47)
speed<-c(2,3,5,9,14,24,29,34)
df<-data.frame(count,speed)
df
names<-c("A","B","C","D","E","F","G","H")
rownames(df)=names
df


lmodel=lm(count ~ speed,data=df)
summary(lmodel)
names(lmodel)               #components of linear regression
lmodel$coefficients 


#Gives slope and Intercept
newypred<-fitted(lmodel)     #predict y values  for each x value
newypred


#Obtaining confidence Intervals
confint(lmodel)  #obtain the confidence intervals
confint(lmodel,parm=c('(Intercept)','speed'),level =0.9)


#Fitted Values
fitted(lmodel)
residuals(lmodel)


#plotting the x , y values 
plot(df$speed,df$count,col="red", xlab = "Speed", ylab = "Count")
coef(lmodel)


#plotting the fitted line 
abline(coef(lmodel),lty=1,col="blue")


#plotting residuals
plot(lmodel,which=1)