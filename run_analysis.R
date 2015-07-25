library(plyr)
library(dplyr)
library(reshape2)
library(sqldf)

setwd("D:\\anstettl\\OnlineCourse\\coursera\\data science\\cleaning data\\project\\UCI HAR Dataset")

# load data
activity_lables <- read.table("activity_labels.txt")
colnames(activity_lables)[2] <- c("activity")
features <- read.table("features.txt")

# train dataset
subject_train <-  read.table("./train/subject_train.txt")
X_train <-  read.table("./train/X_train.txt")
Y_train <-  read.table("./train/Y_train.txt")

# set name of columns of X_train
cnames <- as.character(features[,2])
colnames(X_train) <- cnames

# set name of columns of Y_train and subject
colnames(subject_train) <- c("subject")

 # Combine training files 
final_train_dt <- cbind.data.frame(subject_train, Y_train, X_train)
#final_train_dt <- 
#  merge(activity_lables, final_train_temp, by.x=c("V1"), by.y=c("V1"))


# test dataset
subject_test <-  read.table("./test/subject_test.txt")
X_test <-  read.table("./test/X_test.txt")
Y_test <-  read.table("./test/Y_test.txt")

# set name of columns of X_test
colnames(X_test) <- cnames

# set name of columns of Y_train and subject
colnames(subject_test) <- c("subject")

# Combine training files 
final_test_dt <- cbind.data.frame(subject_test,Y_test, X_test)
#final_test_dt <- 
#  merge(activity_lables, final_test_temp, by.x=c("V1"), by.y=c("V1"))

# Combines training and test dataset
tidi_data <- rbind.data.frame(final_train_dt, final_test_dt)

# delete variables v1
# tidi_data$V1 <- NULL

# subset
subcolmean <- as.character(grep("mean\\(",colnames(tidi_data), value=TRUE))
subcolstd <- as.character(grep("std\\(",colnames(tidi_data), value=TRUE))
subcol <- c("subject", "V1", subcolmean, subcolstd)
sub_tidi <- subset(tidi_data, select = subcol)

# aggregate
mean_tidi <-aggregate(sub_tidi, by=list(sub_tidi$subject,sub_tidi$V1), FUN=mean, na.rm=TRUE)
#mean_tidi <- ddply(sub_tidi_data, c("A"), summarize, B = sum(B))
                            

#mean_tidi <- sqldf('SELECT * FROM sub_tidi_data GROUP BY subject, activity where subject = 30')

final_tidi_data <- 
  merge(activity_lables, mean_tidi, by.x=c("V1"), by.y=c("V1"))

# delete variables 
final_tidi_data$V1 <- NULL
final_tidi_data$Group.1 <- NULL
final_tidi_data$Group.2 <- NULL

# Reorder columns
final_tidi_data <- final_tidi_data[,c(2,1,3:68)]

# change columns' name - remove ()
colnames(final_tidi_data) = sub("\\(\\)","", names(final_tidi_data))

# sort by subject
final_tidi_data <- final_tidi_data[order(final_tidi_data$subject),]

# Create txt file
write.table(final_tidi_data, "tidi_data.txt", row.name=FALSE)
