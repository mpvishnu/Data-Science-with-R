install.packages("gcookbook")

library(gcookbook)

df<-data.frame(cabbage_exp)
print(cabbage_exp)
heights<-df$Weight
#barplot(height = heights, width = 1, )

#5a
library(ggplot2)
library(gcookbook)
library(MASS)

cabbage_exp
data(birthwt)

ggplot(cabbage_exp, aes(x=Date,y=Weight,fill=Cultivar)) + geom_bar(stat="identity",position = "dodge")+ 
       geom_text(aes(label=Weight), vjust=1.5, colour="white", position = position_dodge(.9), size=3)

  
#5b
boxplot(birthwt$bwt~birthwt$age, data=birthwt, ylab="Weight of Baby(grams)", xlab="Age of Mother(years)")
