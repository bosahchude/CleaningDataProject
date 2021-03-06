Code Book
================

The data found here is the result of cleaning  data collected from the accelerometers from the Samsung Galaxy S smartphon.

The original data is described at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. Here is an excerpt:

The experiments have been carried out with a group of 30 volunteers within an age 
bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial 
angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected
for generating the training data and 30% the test data. 

##TidyDataSet1.csv

This data set contains 10,299 observations of 81 variables.

The activites observed over time are:

* WALKING, 
* WALKING_UPSTAIRS, 
* WALKING_DOWNSTAIRS, 
* SITTING, 
* STANDING, 
* LAYING

The column headers of the files were reformatted such that they were clear and readable. Here is the list of all column headers

```
 [1] "subject"                     "activity"                    "timeBodyAccMeanX"           
 [4] "timeBodyAccMeanY"            "timeBodyAccMeanZ"            "timeBodyAccStdX"            
 [7] "timeBodyAccStdY"             "timeBodyAccStdZ"             "timeGravityAccMeanX"        
[10] "timeGravityAccMeanY"         "timeGravityAccMeanZ"         "timeGravityAccStdX"         
[13] "timeGravityAccStdY"          "timeGravityAccStdZ"          "timeBodyAccJerkMeanX"       
[16] "timeBodyAccJerkMeanY"        "timeBodyAccJerkMeanZ"        "timeBodyAccJerkStdX"        
[19] "timeBodyAccJerkStdY"         "timeBodyAccJerkStdZ"         "timeBodyGyroMeanX"          
[22] "timeBodyGyroMeanY"           "timeBodyGyroMeanZ"           "timeBodyGyroStdX"           
[25] "timeBodyGyroStdY"            "timeBodyGyroStdZ"            "timeBodyGyroJerkMeanX"      
[28] "timeBodyGyroJerkMeanY"       "timeBodyGyroJerkMeanZ"       "timeBodyGyroJerkStdX"       
[31] "timeBodyGyroJerkStdY"        "timeBodyGyroJerkStdZ"        "timeBodyAccMagMean"         
[34] "timeBodyAccMagStd"           "timeGravityAccMagMean"       "timeGravityAccMagStd"       
[37] "timeBodyAccJerkMagMean"      "timeBodyAccJerkMagStd"       "timeBodyGyroMagMean"        
[40] "timeBodyGyroMagStd"          "timeBodyGyroJerkMagMean"     "timeBodyGyroJerkMagStd"     
[43] "freqBodyAccMeanX"            "freqBodyAccMeanY"            "freqBodyAccMeanZ"           
[46] "freqBodyAccStdX"             "freqBodyAccStdY"             "freqBodyAccStdZ"            
[49] "freqBodyAccMeanFreqX"        "freqBodyAccMeanFreqY"        "freqBodyAccMeanFreqZ"       
[52] "freqBodyAccJerkMeanX"        "freqBodyAccJerkMeanY"        "freqBodyAccJerkMeanZ"       
[55] "freqBodyAccJerkStdX"         "freqBodyAccJerkStdY"         "freqBodyAccJerkStdZ"        
[58] "freqBodyAccJerkMeanFreqX"    "freqBodyAccJerkMeanFreqY"    "freqBodyAccJerkMeanFreqZ"   
[61] "freqBodyGyroMeanX"           "freqBodyGyroMeanY"           "freqBodyGyroMeanZ"          
[64] "freqBodyGyroStdX"            "freqBodyGyroStdY"            "freqBodyGyroStdZ"           
[67] "freqBodyGyroMeanFreqX"       "freqBodyGyroMeanFreqY"       "freqBodyGyroMeanFreqZ"      
[70] "freqBodyAccMagMean"          "freqBodyAccMagStd"           "freqBodyAccMagMeanFreq"     
[73] "freqBodyAccJerkMagMean"      "freqBodyAccJerkMagStd"       "freqBodyAccJerkMagMeanFreq" 
[76] "freqBodyGyroMagMean"         "freqBodyGyroMagStd"          "freqBodyGyroMagMeanFreq"    
[79] "freqBodyGyroJerkMagMean"     "freqBodyGyroJerkMagStd"      "freqBodyGyroJerkMagMeanFreq"
```
##TidyDataSet2.txt

This is an independent tidy data set with the average of each variable for each activity and each subject.

It is derived from TidyDataSet2.csv and it shares the same column variable names.

It contains 180 observations of 81 variables.
