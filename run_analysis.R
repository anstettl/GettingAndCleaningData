# Auhor = Laurent Anstett 25/7/2015
# Some parts of code lines were found on forums and tutorials
# run_analysis.R

# load data
activity_lables <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activity_lables)[2] <- c("activity")
features <- read.table("./UCI HAR Dataset/features.txt")

# load train dataset
subject_train <-  read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <-  read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <-  read.table("./UCI HAR Dataset/train/Y_train.txt")

# set name of X_train columns
cnames <- as.character(features[,2])
colnames(X_train) <- cnames

# set name of subject column
colnames(subject_train) <- c("subject")

 # Combine training files 
final_train_dt <- cbind.data.frame(subject_train, Y_train, X_train)

# load test dataset
subject_test <-  read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <-  read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <-  read.table("./UCI HAR Dataset/test/Y_test.txt")

# set name of X_test columns 
colnames(X_test) <- cnames

# set name of subject column
colnames(subject_test) <- c("subject")

# Combine training files 
final_test_dt <- cbind.data.frame(subject_test,Y_test, X_test)

# Combines training and test dataset
tidi_data <- rbind.data.frame(final_train_dt, final_test_dt)

# get only variables which represent the mean or std  
subcolmean <- as.character(grep("mean\\(",colnames(tidi_data), value=TRUE))
subcolstd <- as.character(grep("std\\(",colnames(tidi_data), value=TRUE))
subcol <- c("subject", "V1", subcolmean, subcolstd)
sub_tidi <- subset(tidi_data, select = subcol)

# aggregate - group data by subject and activity
mean_tidi <-aggregate(sub_tidi, by=list(sub_tidi$subject,sub_tidi$V1), FUN=mean, na.rm=TRUE)

# merge data with activity lables
final_tidi_data <- 
  merge(activity_lables, mean_tidi, by.x=c("V1"), by.y=c("V1"))

# delete variables from final_tidi_data
final_tidi_data$V1 <- NULL
final_tidi_data$Group.1 <- NULL
final_tidi_data$Group.2 <- NULL

# Reorder columns to have subject column first and activity second
final_tidi_data <- final_tidi_data[,c(2,1,3:68)]

# change columns' name - remove ()
colnames(final_tidi_data) = sub("\\(\\)","", names(final_tidi_data))

# sort data by subject values
final_tidi_data <- final_tidi_data[order(final_tidi_data$subject),]

# Create txt file
write.table(final_tidi_data, "final_tidi_data.txt", row.name=FALSE)

# remove all objects 
rm(list=ls(all=TRUE))
