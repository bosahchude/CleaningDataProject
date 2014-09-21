#This script assumes there is a folder called "UCI HAR Dataset" in your working directory that contains the required data files.

#Load required libraries (This script wouldn't run otherwise)
library("plyr")
library("reshape2")

#Function that returns the main TidyDataSet1
getTidyDataSet1 <- function(dataRootDir = "UCI HAR Dataset") {
  
  sourceFilePath <- function(file) {
    paste(dataRootDir,"/", file, sep = "")
  }

  xTestData <- sourceFilePath("test/X_test.txt")
  yTestData <- sourceFilePath("test/y_test.txt")
  kSubjectTestData <- sourceFilePath("test/subject_test.txt")
  
  yTrainData <- sourceFilePath("train/y_train.txt")
  xTrainData <- sourceFilePath("train/X_train.txt")
  kSubjectTrainData <- sourceFilePath("train/subject_train.txt")
  
  featuresData <- sourceFilePath("features.txt")
  activityLabelsData <- sourceFilePath("activity_labels.txt")

  #Merging Training and Test sets
  testSet <- read.table(xTestData)
  trainingSet <- read.table(xTrainData)
  mergedData <- rbind(testSet, trainingSet)

  #Set column names of dataset
  featureNames <- read.table(featuresData, stringsAsFactors = FALSE)[[2]]
  colnames(mergedData) <- featureNames
  mergedData <- mergedData[, grep("mean|std|activityLabel", featureNames)]

  #Clean up the column names and make them 'tidy'
  cleanColNames <- names(mergedData)
  cleanColNames <- gsub(pattern = "^t", replacement = "time", x = cleanColNames)
  cleanColNames <- gsub(pattern = "^f", replacement = "freq", x = cleanColNames)
  cleanColNames <- gsub(pattern = "-?mean[(][)]-?", replacement = "Mean", x = cleanColNames)
  cleanColNames <- gsub(pattern = "-?std[()][)]-?", replacement = "Std", x = cleanColNames)
  cleanColNames <- gsub(pattern = "-?meanFreq[()][)]-?", replacement = "MeanFreq", x = cleanColNames)
  cleanColNames <- gsub(pattern = "BodyBody", replacement="Body", x = cleanColNames)
  names(mergedData) <- cleanColNames

  #Name the Activities
  activityLabels <- read.table(activityLabelsData,stringsAsFactors=FALSE)
  colnames(activityLabels) <- c("activityID","activityLabel")

  #Read test and training activities then row bind them
  testActivities <- read.table(yTestData,stringsAsFactors=FALSE)
  trainingActivities <- read.table(yTrainData,stringsAsFactors=FALSE)
  allActivities <- rbind(testActivities,trainingActivities)
  
  #Merge the activities with the labels
  colnames(allActivities)[1] <- "activityID"
  activities <- join(allActivities,activityLabels, by = "activityID")

  #Add the new column to MergeData
  mergedData <- cbind(activity = activities[,"activityLabel"],mergedData)

  #Read Subjects id and merge
  testSubjects <- read.table(kSubjectTestData, stringsAsFactors=FALSE)
  trainingSubjects <- read.table(kSubjectTrainData, stringsAsFactors=FALSE)
  allSubjects <- rbind(testSubjects,trainingSubjects)
  colnames(allSubjects) <- "subject"
  mergedData <- cbind(allSubjects,mergedData)

  #Returns ordered tidy data
  mergedData[order(mergedData$subject, mergedData$activity),]
}

#Function that returns TidyDataSet2 for submission to Coursera
getTidyDataSet2 <- function(rawData) {
  #Reshape dataset
  tempData <- melt(rawData,id.vars= c("subject", "activity"))
  
  #Return the mean of the columns
  dcast(tempData, subject + activity ~ variable, fun.aggregate = mean)
}

#Executes code to get tidyDataSet1 and tidyDataSet2
tidyDataSet1 <- getTidyDataSet1()
tidyDataSet2 <- getTidyDataSet2(tidyDataSet1)

#Write out tidyDataSet1 and tidyDataSet2 to the working directory
write.csv(tidyDataSet1, file = "TidyDataSet1.csv")
write.csv(tidyDataSet2, file = "TidyDataSet2.csv")
