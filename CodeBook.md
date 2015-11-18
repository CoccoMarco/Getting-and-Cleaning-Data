# CodeBook

This CodeBook refers to the project for the Coursera course: Getting and Cleaning Data


# Aim of the project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 
The script used is named "run_analysis.R" and it is available at github:
https://github.com/CoccoMarco/Getting-and-Cleaning-Data

# Background

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Raw data

(From the README file included in the dataset)

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data but are not used. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

# Output data

The script outputs one tidy dataset called "data", a data frame of 180 observations of 68 variables.

Variable list:
- 'activity'
- 'subject'
- 'tBodyAcc-mean()-X'
- 'tBodyAcc-mean()-Y'
- 'tBodyAcc-mean()-Z'
- 'tGravityAcc-mean()-X'
- 'tGravityAcc-mean()-Y'
- 'tGravityAcc-mean()-Z'
- 'tBodyAccJerk-mean()-X'
- 'tBodyAccJerk-mean()-Y'
- 'tBodyAccJerk-mean()-Z'
- 'tBodyGyro-mean()-X'
- 'tBodyGyro-mean()-Y'
- 'tBodyGyro-mean()-Z'
- 'tBodyGyroJerk-mean()-X'
- 'tBodyGyroJerk-mean()-Y'
- 'tBodyGyroJerk-mean()-Z'
- 'tBodyAccMag-mean()'
- 'tGravityAccMag-mean()'
- 'tBodyAccJerkMag-mean()'
- 'tBodyGyroMag-mean()'
- 'tBodyGyroJerkMag-mean()'
- 'fBodyAcc-mean()-X'
- 'fBodyAcc-mean()-Y'
- 'fBodyAcc-mean()-Z'
- 'fBodyAccJerk-mean()-X'
- 'fBodyAccJerk-mean()-Y'
- 'fBodyAccJerk-mean()-Z'
- 'fBodyGyro-mean()-X'
- 'fBodyGyro-mean()-Y'
- 'fBodyGyro-mean()-Z'
- 'fBodyAccMag-mean()'
- 'fBodyBodyAccJerkMag-mean()'
- 'fBodyBodyGyroMag-mean()'
- 'fBodyBodyGyroJerkMag-mean()'
- 'tBodyAcc-std()-X'
- 'tBodyAcc-std()-Y'
- 'tBodyAcc-std()-Z'
- 'tGravityAcc-std()-X'
- 'tGravityAcc-std()-Y'
- 'tGravityAcc-std()-Z'
- 'tBodyAccJerk-std()-X'
- 'tBodyAccJerk-std()-Y'
- 'tBodyAccJerk-std()-Z'
- 'tBodyGyro-std()-X'
- 'tBodyGyro-std()-Y'
- 'tBodyGyro-std()-Z'
- 'tBodyGyroJerk-std()-X'
- 'tBodyGyroJerk-std()-Y'
- 'tBodyGyroJerk-std()-Z'
- 'tBodyAccMag-std()'
- 'tGravityAccMag-std()'
- 'tBodyAccJerkMag-std()'
- 'tBodyGyroMag-std()'
- 'tBodyGyroJerkMag-std()'
- 'fBodyAcc-std()-X'
- 'fBodyAcc-std()-Y'
- 'fBodyAcc-std()-Z'
- 'fBodyAccJerk-std()-X'
- 'fBodyAccJerk-std()-Y'
- 'fBodyAccJerk-std()-Z'
- 'fBodyGyro-std()-X'
- 'fBodyGyro-std()-Y'
- 'fBodyGyro-std()-Z'
- 'fBodyAccMag-std()'
- 'fBodyBodyAccJerkMag-std()'
- 'fBodyBodyGyroMag-std()'
- 'fBodyBodyGyroJerkMag-std()'
