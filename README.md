Getting and Cleaning Data Course Project
===================
This repository contains three files.

* run_analysis.R  - Script for cleaning and generating tidy data
* codebook.md - Code book describing the tidy data
* readme.md - Project readme file

##Dependencies

This script depends on both the `lyr` and `reshape2` library to be installed and loaded.

You can install them with.
```
install.packages("plyr")
install.packages("reshape2")
```

##How to run

Simply source the `run_analysis.R` script located in this repository.

You need to have the dependences installed and loaded for the script to run.

After the script is sourced, the following CSVs would be outputted to your working directory.

`TidyDataSet1.csv` and `TidyDataSet2.txt`

##Output Files

TidyDataSet1.csv and TidyDataSet2.txt and are the output files from this script.

TidyDataSet2.txt is an independent tidy data set with the average of each variable for each activity and each subject from TidyDataSet1.csv

##Code book

The code book describing all the variables in the output files can be found in this repository.
