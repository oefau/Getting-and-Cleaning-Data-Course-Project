#------Getting and Cleaning Data Course Project----
# This script Merges the training and test sets to create one data set
# Uses descriptive activity names to name the activities in the data set
# Labels the data set with descriptive variable names
# Creates a 2nd, independent tidy data set with the average of each variable for
# each activity and each subject.

library(dplyr)
library(plyr)


if (!file.exists("UCI HAR Dataset/")) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  tmp <- tempfile()
  download.file(fileUrl, tmp)
  unzip(tmp)
  unlink(tmp)
}

# Read data 
activitynames    <- read.table("UCI HAR Dataset/activity_labels.txt")[,2]
features         <- read.table("UCI HAR Dataset/features.txt")[,2]
subject_test     <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
xtest_features   <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features)
activity_test    <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity")
subject_train    <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
xtrain_features  <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features)
activity_train   <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity")

# Merge test and train data sets
subject <- rbind(subject_train, subject_test)
activity <- rbind(activity_train, activity_test)
datatype <- factor(c(rep("TRAIN", nrow(xtrain_features)), rep("TEST", nrow(xtest_features))))
# datatype identifies which obseverations are testing and which are training
featureData <- rbind(xtrain_features, xtest_features)

# Extract only measurements on mean and standard deviation for each measurement

mean_and_sd <- which(grepl("(mean\\(\\)|std\\(\\))", features))
featureData <- featureData[,mean_and_sd]

# there are 66 mean and std variable so dim(featureData)-> [1] 10299    66

# Clean up variable names 
colnames(featureData)  <- gsub("\\.\\.","",names(featureData)) 

tidydata <- cbind(subject, activity, datatype, featureData)

# Use descrptive activity names [SITTING, STANDING,...] to name activities
tidydata$subject  <-  factor(tidydata$subject)
tidydata$activity <- activitynames[tidydata$activity]

# Second independent tidydata with average for each activity for each subject
avg_tidydata <- ddply(tidydata, .(subject, activity), numcolwise(mean))

# save the data to a text file avg_tidydata.txt
write.table(avg_tidydata, "avg_tidydata.txt", row.names = FALSE)
View(avg_tidydata)