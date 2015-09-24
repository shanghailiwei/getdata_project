#download the file and unzip to local directory
fileUrl="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
basename(fileUrl)
download.file(fileUrl,basename(fileUrl))
unzip(basename(fileUrl))   

#import the txt file into variables
test.x<-read.table("./UCI HAR Dataset/test/X_test.txt")
test.y<-read.table("./UCI HAR Dataset/test/y_test.txt")
test.subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")

train.x<-read.table("./UCI HAR Dataset/train/X_train.txt")
train.y<-read.table("./UCI HAR Dataset/train/y_train.txt")
train.subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")

activitylabel<-read.table("./UCI HAR Dataset/activity_labels.txt")
features<-read.table("./UCI HAR Dataset/features.txt")

#step1, Merges the training and the test sets to create one data set.

predata<-rbind(test.x,train.x)  
subject<-rbind(test.subject,train.subject)
activity<-rbind(test.y,train.y)

all_data<-cbind(subject,activity,predata)

#step2,	Extracts only the measurements on the mean and standard deviation for each measurement. 
names<-c(as.character(features[,2]))
meanstd<-c(grep("mean()",names,value=F,fixed=T),grep("std()",names,value=F,fixed=T))
filtdata<-predata[,meanstd]
data<-cbind(subject,activity,filtdata)

#step3,Uses descriptive activity names to name the activities in the data set


meanstdval<-c(grep("mean()",names,value=T,fixed=T),grep("std()",names,value=T,fixed=T))
names(data)<-c("subject","activity",meanstdval)

#step4,Appropriately labels the data set with descriptive variable names. 

data$activity<-factor(data$activity, levels=activitylabel$V1, labels=activitylabel$V2)

#step5,From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(reshape2)

melted<-melt(data, id=c("subject","activity"), measure.vars=meanstdval)
newdata<-dcast(melted, subject + activity ~ variable, mean)

write.table(newdata, file = "FinalData.txt",row.name=FALSE)


