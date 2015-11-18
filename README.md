# README

This README refers to the project for the Coursera course: Getting and Cleaning Data

# Aim of the project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The script used is named "run_analysis.R", detailed description are available in the codeBook.md file. They are available at github: https://github.com/CoccoMarco/Getting-and-Cleaning-Data

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

# Rawdata

(From the README.txt of the dataset)

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

# Script

The script run_analysis.R computes a tidy dataset according to the "aim of the project" section.

It requires the "dplyr" package and the script must be in working directory together with the unzipped dataset files (i.e. a folder called "UCI HAR Dataset".

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

For a detailed description of each step look at the comments inside the script "run_analysis.R"

# Variables

A detailed description of the variables and outputs is included in the "CodeBook.md" file.

# Required files

The course project consists of the following files:
- README.md : This file. It summarize the project and how to manage it.
- Unzipped dataset folder called "UCI HAR Dataset". The dataset could be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- CodeBook.md : The code book with the explanation of all the variables and how the data is treated.
- run_analysis.R : the R script that takes the raw data as input and returns a tidy dataset called "data" as required by the course project guidelines.

# Instructions

- Read CodeBook.md
- Download and unzip the raw dataset in your working directory
- Source the run_analysis.R file
- View the tidy dataset "data"
