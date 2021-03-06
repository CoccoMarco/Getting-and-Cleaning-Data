# CodeBook

This CodeBook refers to the project for the Coursera course: Getting and Cleaning Data


# Aim of the project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The script used is named "run_analysis.R" and it is available at github:
https://github.com/CoccoMarco/Getting-and-Cleaning-Data

# Background

(From the course project web page)

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following.

1) Merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement. 

3) Uses descriptive activity names to name the activities in the data set.

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

# Raw data features

(From the features_info.txt file included in the dataset)
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

# Output data

The script outputs one tidy dataset called "data", a data frame of 180 observations of 68 variables.

Variable list:
- 'activity' : activity name the observation refers to
- 'subject' : identifier of the subject the observation refers to

  Next variable are averaged values of selected features (in particular the mean and std values). The description of these values is in "Raw data features" section of this CodeBook.

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

# Data processing

According to the course project an R script was created called run_analysis.R
The R script does the following:

1) Merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement. 

3) Uses descriptive activity names to name the activities in the data set.

4) Appropriately labels the data set with descriptive variable names. 

5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

In particular the script makes the following steps:

- load the library dplyr
- Load the list of the variables names
- Load the list of the activities names and the corresponding identifiers
- Load test data
- Select a subset containing mean and std values
- Load activity identifiers relative to the test data
- Substitute the activity identifier with the descriptive name of the activity
- Load subject identifiers relative to the test data
- Add the two new columns (activity and subject) to the test data
- Load train data
- Select a subset containing mean and std values
- Load activity identifiers relative to the train data
- Substitute the activity identifier with the descriptive name of the activity
- Load subject identifiers relative to the train data
- Add the two new columns (activity and subject) to the train data
- Create a new dataset (data) merging the test and training data
- Clean environment
- Group the dataset by activity and subject 
- For each variables (except activity and subject) compute the average of the values collected in the dataset (data)

The script return the tidy dataset called "data".

