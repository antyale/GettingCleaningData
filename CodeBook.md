# Study design
This is a clean dataset from the Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) 
while carrying a waist-mounted smartphone with embedded inertial sensors. You can find the datasets and more information about how they were gathered in [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones].

The steps followed to create the clean dataset are:
- Extracts only the measurements on the mean and standard deviation for each measurement
- Add the descriptive activity names to the measurement datasets
- Add the subject to the measurement datasets
- Merge the training and the test datasets
- Calculates average of each variable for each activity and each subject 

# Code Book
1. subject
* Represents the person who performed the activity. Its range is from 1 to 30.
1. activity.name
* Its value is one of the following list{WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}
1. tBodyAcc.mean.X
1. tBodyAcc.mean.Y
1. tBodyAcc.mean.Z
1. tBodyAcc.std.X
1. tBodyAcc.std.Y
1. tBodyAcc.std.Z
1. tGravityAcc.mean.X
1. tGravityAcc.mean.Y
1. tGravityAcc.mean.Z
1. tGravityAcc.std.X
1. tGravityAcc.std.Y
1. tGravityAcc.std.Z
1. tBodyAccJerk.mean.X
1. tBodyAccJerk.mean.Y
1. tBodyAccJerk.mean.Z
1. tBodyAccJerk.std.X
1. tBodyAccJerk.std.Y
1. tBodyAccJerk.std.Z
1. tBodyGyro.mean.X
1. tBodyGyro.mean.Y
1. tBodyGyro.mean.Z
1. tBodyGyro.std.X
1. tBodyGyro.std.Y
1. tBodyGyro.std.Z
1. tBodyGyroJerk.mean.X
1. tBodyGyroJerk.mean.Y
1. tBodyGyroJerk.mean.Z
1. tBodyGyroJerk.std.X
1. tBodyGyroJerk.std.Y
1. tBodyGyroJerk.std.Z
1. tBodyAccMag.mean
1. tBodyAccMag.std
1. tGravityAccMag.mean
1. tGravityAccMag.std
1. tBodyAccJerkMag.mean
1. tBodyAccJerkMag.std
1. tBodyGyroMag.mean
1. tBodyGyroMag.std
1. tBodyGyroJerkMag.mean
1. tBodyGyroJerkMag.std
1. fBodyAcc.mean.X
1. fBodyAcc.mean.Y
1. fBodyAcc.mean.Z
1. fBodyAcc.std.X
1. fBodyAcc.std.Y
1. fBodyAcc.std.Z
1. fBodyAccJerk.mean.X
1. fBodyAccJerk.mean.Y
1. fBodyAccJerk.mean.Z
1. fBodyAccJerk.std.X
1. fBodyAccJerk.std.Y
1. fBodyAccJerk.std.Z
1. fBodyGyro.mean.X
1. fBodyGyro.mean.Y
1. fBodyGyro.mean.Z
1. fBodyGyro.std.X
1. fBodyGyro.std.Y
1. fBodyGyro.std.Z
1. fBodyAccMag.mean
1. fBodyAccMag.std
1. fBodyBodyAccJerkMag.mean
1. fBodyBodyAccJerkMag.std
1. fBodyBodyGyroMag.mean
1. fBodyBodyGyroMag.std
1. fBodyBodyGyroJerkMag.mean
1. fBodyBodyGyroJerkMag.std