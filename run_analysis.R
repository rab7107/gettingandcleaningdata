# Getting and Cleaning Data - Course Project

# Combines the test and training sets for the UCI HAR dataset, 
# renames columns to be more human-readable, 
# and returns a smaller data set containing the mean values for each subject,activity pair.

# Load data from {working directory}/UCI HAR Dataset
xtrain <- read.table(file="UCI HAR Dataset/train/X_train.txt")
xtest <- read.table(file="UCI HAR Dataset/test/X_test.txt")

ytrain <- read.table(file="UCI HAR Dataset/train/Y_train.txt")
ytest <- read.table(file="UCI HAR Dataset/test/Y_test.txt")

subjtrain <- read.table(file="UCI HAR Dataset/train/subject_train.txt")
subjtest <- read.table(file="UCI HAR Dataset/test/subject_test.txt")

features <- read.table(file="UCI HAR Dataset/features.txt")
activityLabels <- read.table(file="UCI HAR Dataset/activity_labels.txt")
activityLabels <- activityLabels[,2] #get activity labels as an ordered list without numbers

#Label columns
colnames(xtrain) <- features[,2]
colnames(subjtrain) <- "subject.id"
colnames(ytrain) <- "activity.id"
colnames(xtest) <- features[,2]
colnames(subjtest) <- "subject.id"
colnames(ytest) <- "activity.id"

# 1. Combine training and test data
fullData <- rbind(cbind(subjtest, ytest, xtest), cbind(subjtrain, ytrain, xtrain))

# 2. Extract measurements of mean and std. dev.
fullData <- subset(fullData, select=grep("subject\\.id|activity\\.id|mean\\(\\)|std\\(\\)", names(fullData)))

# 3. Label activities with name rather than number
fullData$activity.id <- activityLabels[fullData$activity.id] 
colnames(fullData) <- sub("activity.id", "activity", colnames(fullData))

# 4. Rename columns to be more descriptive
colnames(fullData) <- gsub("\\(\\)", "", colnames(fullData))
colnames(fullData) <- gsub("([A-Z][a-z]+)", ".\\1", colnames(fullData))
colnames(fullData) <- gsub("^t", "time", colnames(fullData))
colnames(fullData) <- gsub("^f", "freq", colnames(fullData))
colnames(fullData) <- gsub("Acc", "acceleration", colnames(fullData))
colnames(fullData) <- gsub("Mag", "magnitude", colnames(fullData))
colnames(fullData) <- gsub("-", ".", colnames(fullData))
colnames(fullData) <- tolower(colnames(fullData))

# 5. Aggregate data by subject and activity, taking the mean of the values.
aggData <- aggregate(fullData[colnames(fullData) != c("subject.id", "activity")], by=list(fullData$subject.id, fullData$activity), mean)
colnames(aggData) <- sub("Group.1", "subject.id", colnames(aggData))
colnames(aggData) <- sub("Group.2", "activity", colnames(aggData))
return(aggData)