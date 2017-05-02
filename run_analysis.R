##Load data and ppropriately labels the data set with descriptive variable names.
names<-read.table("./features.txt", sep = "")
colNa<-as.vector(names$V2)
##Load training set
X_train<-read.table("./train/X_train.txt", sep = "",col.names = colNa)
trainset<-cbind(X_train,activity=scan("./train/y_train.txt", sep = ""),read.table("./train/subject_train.txt",col.names ="subject"))
##Load Test set 
X_test<-read.table("./test/X_test.txt", sep = "",col.names = colNa)
testset<-cbind(X_test,activity=scan("./test/y_test.txt", sep = ""),read.table("./test/subject_test.txt",col.names = "subject"))
##Merge Training and Set datasets
dataset<-rbind(trainset,testset)

##Extracts only the measurements on the mean and standard deviation for each measurement.
toMatch<-c("[Mm]ean","[Ss]td")
matches <- unique (grep(paste(toMatch,collapse="|"), names(dataset),value=TRUE))
matches<-c(matches,"subject","activity")
dataset<-dataset[,matches]
dataset$activity<-factor(dataset$activity)
dataset$subject<-factor(dataset$subject)

##Uses descriptive activity names to name the activities in the data set
install.packages("DataCombine")
library(DataCombine)
num<-c(1,2,3,4,5,6)
nam<-c("walking","walking upstairs", "walking downstairs", "sitting", "standing","laying")
replaceValues<-data.frame(number=num,name=nam)
dataset<-FindReplace(data=dataset , Var = "activity",replaceData = replaceValues,from= "number", to= "name")
dataset$activity<-factor(dataset$activity)

##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)
variablesNames<-names(dataset)
c<-variablesNames[1:86]
meltData<-melt(dataset,id=c("activity","subject"),measure.vars = c)
newDataSet<-dcast(meltData,activity + subject~variable,mean,na.rm=TRUE)
write.table(newDataSet, file = "./projectCleanData/scripts/q5dataset.txt", row.names = FALSE, col.names = TRUE)