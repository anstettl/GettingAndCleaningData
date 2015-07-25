# Getting and Cleaning Data

Here are the data for the project :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

To run the script (run_analysis.R), follow the following instructions :
- Download the data and unzip the file in your working directory (where the script resides). Once the data is downloaded and unzipped, you should have the folder "UCI HAR Dataset" in your working directory.
- Set the R working directory (setwd()) to your working directory (path to where the script is located)
- Run run_analysis.R

Note : If the data is not in your working directory, the script will not run.

The script produces a file called final_tidi_data.txt. All objects created to produce final_tidi_data.txt are deleted at the end of the script. If you wish to look at intermediary data, you can comment out the last line of code in the script - rm(list=ls(all=TRUE)).


- The script reads various files from the train and test datasets into data frames. 
- It merges subjects with the train data sets and also subjects with the test data sets. 
- Once the train and test data sets ready, it will merge them together. 
- Only the columns that represent the mean or the std are kept. 
- The activity labels are also added to each rows. 
- -inally, the data is grouped by subject/activity and the mean of each variable is calculated. 
 
