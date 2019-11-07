library(e1071)

b<-read.csv("D:/BMS/7th SEM/DSR/Datasets/samplebayes.csv")
b
class(b)

testset<-data.frame(Age="<=30",Income="Medium",JobSatisfaction="No",Desire="Fair",Enrolls="")
testset
b<-rbind(b,testset)
b

traindata <- as.data.frame(b[1:14,])
testdata <- as.data.frame(b[15,])
traindata
testdata


bayesmodel <- naiveBayes(Enrolls ~ Age+Income+JobSatisfaction+Desire,traindata)
bayesmodel
results <- predict (bayesmodel,testdata)
results
model = naiveBayes(Enrolls ~ ., traindata, laplace=.01)
model
results1<-predict(model,testdata)
results1
