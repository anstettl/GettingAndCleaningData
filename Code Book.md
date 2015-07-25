# Data Dictionary

The final data contains the following variables (features). I have extracted only the measurements on the mean and standard deviation for each measurement as per the project's requirements (mean: Mean value			
std: Standard deviation) :

-	subject	: Each row identifies the subject who performed the activity
-	activity	: Activity Labels 
-	tBodyAcc-mean-X	: Mean body acceleration in time domaine in X direction
-	tBodyAcc-mean-Y	: Mean body acceleration in time domaine in Y direction
-	tBodyAcc-mean-Z	: Mean body acceleration in time domaine in Z direction
-	tGravityAcc-mean-X	: Mean gravity acceleration in time domaine in X direction
-	tGravityAcc-mean-Y	: Mean gravity acceleration in time domaine in Y direction
-	tGravityAcc-mean-Z	: Mean gravity acceleration in time domaine in Z direction
-	tBodyAccJerk-mean-X	: Mean jerk signal in time domaine in X direction from body acceleration
-	tBodyAccJerk-mean-Y	: Mean jerk signal in time domaine in Y direction body acceleration
-	tBodyAccJerk-mean-Z	: Mean jerk signal in time domaine in Z direction body acceleration
-	tBodyGyro-mean-X	: Mean body angulare velocity in X direction in time domaine
-	tBodyGyro-mean-Y	: Mean body angulare velocity in Y direction in time domaine
-	tBodyGyro-mean-Z	: Mean body angulare velocity in Z direction in time domaine
-	tBodyGyroJerk-mean-X	: Mean jerk signal in time domaine in X direction from angular velocity
-	tBodyGyroJerk-mean-Y	: Mean jerk signal in time domaine in Y direction from angular velocity
-	tBodyGyroJerk-mean-Z	: Mean jerk signal in time domaine in Z direction from angular velocity
-	tBodyAccMag-mean	: Mean magnitude of body acceleration in time domaine
-	tGravityAccMag-mean	: Mean magnitude of gravity acceleration in time domaine
-	tBodyAccJerkMag-mean	: Mean magnitude of jerk signal in time domaine from body acceleration
-	tBodyGyroMag-mean	: Mean magnitude of body angulare velocity in time domaine
-	tBodyGyroJerkMag-mean	: Mean magnitude of jerk signal in time domaine from angular velocity
-	fBodyAcc-mean-X	: Mean  body acceleration in frequency domaine (fast fournier transformation) in X direction 
-	fBodyAcc-mean-Y	: Mean body acceleration in frequency domaine (fast fournier transformation) in Y direction
-	fBodyAcc-mean-Z	: Mean body acceleration in frequency domaine (fast fournier transformation) in Z direction
-	fBodyAccJerk-mean-X	: Mean jerk signal in frequency domaine (fast fournier transformation) in X direction from body acceleration
-	fBodyAccJerk-mean-Y	: Mean jerk signal in frequency domaine (fast fournier transformation) in Y direction body acceleration
-	fBodyAccJerk-mean-Z	: Mean jerk signal in frequency domaine (fast fournier transformation) in Z direction body acceleration
-	fBodyGyro-mean-X	: Mean body angulare velocity (fast fournier transformation) in X direction infrequency domaine
-	fBodyGyro-mean-Y	: Mean body angulare velocity (fast fournier transformation) in Y direction in frequency domaine
-	fBodyGyro-mean-Z	: Mean body angulare velocity (fast fournier transformation) in Z direction in frequency domaine
-	fBodyAccMag-mean	: Mean magnitude of body acceleration in frequency domaine (fast fournier transformation)
-	fBodyBodyAccJerkMag-mean	: Mean magnitude of jerk signal (fast fournier transformation) in frequency domaine from body acceleration
-	fBodyBodyGyroMag-mean	: Mean magnitude of body angulare velocity (fast fournier transformation)
-	fBodyBodyGyroJerkMag-mean	: Mean magnitude of jerk signal (fast fournier transformation) in frequency domaine from angular velocity
-	tBodyAcc-std-X	: std  body acceleration in time in X direction
-	tBodyAcc-std-Y	: Mean body acceleration in time in Y direction
-	tBodyAcc-std-Z	: std body acceleration in time in Z direction
-	tGravityAcc-std-X	: std gravity acceleration in time  in X direction
-	tGravityAcc-std-Y	: std gravity acceleration in time in Y direction
-	tGravityAcc-std-Z	: std gravity acceleration in time in Z direction
-	tBodyAccJerk-std-X	: std jerk signal in time in X direction from body acceleration
-	tBodyAccJerk-std-Y	: std jerk signal in time in Y direction body acceleration
-	tBodyAccJerk-std-Z	: std jerk signal in time in Z direction body acceleration
-	tBodyGyro-std-X	: std body angulare velocity in X direction 
-	tBodyGyro-std-Y	: std body angulare velocity in Y direction 
-	tBodyGyro-std-Z	: std body angulare velocity in Z direction 
-	tBodyGyroJerk-std-X	: std jerk signal in time in X direction from angular velocity
-	tBodyGyroJerk-std-Y	: std jerk signal in time in Y direction from angular velocity
-	tBodyGyroJerk-std-Z	: std jerk signal in time in Z direction from angular velocity
-	tBodyAccMag-std	: std magnitude of body acceleration in time 
-	tGravityAccMag-std	: std magnitude of gravity acceleration in time
-	tBodyAccJerkMag-std	: std magnitude of jerk signal in time from body acceleration
-	tBodyGyroMag-std	: std magnitude of body angulare velocity
-	tBodyGyroJerkMag-std	: std magnitude of jerk signal in time from angular velocity
-	fBodyAcc-std-X	: std  body acceleration (fast fournier transformation) in X direction 
-	fBodyAcc-std-Y	: std body acceleration in frequency domaine (fast fournier transformation) in Y direction
-	fBodyAcc-std-Z	: std body acceleration in frequency domaine (fast fournier transformation) in Z direction
-	fBodyAccJerk-std-X	: std jerk signal in frequency domaine (fast fournier transformation) in X direction from body acceleration
-	fBodyAccJerk-std-Y	: std jerk signal in frequency domaine (fast fournier transformation) in Y direction body acceleration
-	fBodyAccJerk-std-Z	: std jerk signal in frequency domaine (fast fournier transformation) in Z direction body acceleration
-	fBodyGyro-std-X	: std body angulare velocity in frequency domaine  (fast fournier transformation) in X direction 
-	fBodyGyro-std-Y	: std body angulare velocity in frequency domaine (fast fournier transformation) in Y direction 
-	fBodyGyro-std-Z	: std body angulare velocity in frequency domaine (fast fournier transformation) in Z direction 
-	fBodyAccMag-std	: std magnitude of body acceleration in frequency domaine (fast fournier transformation)
-	fBodyBodyAccJerkMag-std	: std magnitude of jerk signal in frequency domaine (fast fournier transformation) in time from body acceleration
-	fBodyBodyGyroMag-std	: std magnitude of body angulare velocity in frequency domaine (fast fournier transformation)
-	fBodyBodyGyroJerkMag-std	: std magnitude of jerk signal in frequency domaine (fast fournier transformation) in time from angular velocity


Note : The units used for the accelerations (body) are 'g's (gravity of earth -> 9.80665 m/seg2) and the gyroscope units are rad/seg.			
			
For more information on how the value for each variable was calculated, read readme.txt, features.txt and features_info.txt. These files are located in the folder "UCI HAR Dataset".
