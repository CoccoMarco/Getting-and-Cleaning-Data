# Course project of the Coursera and John Hopkins Bloomberg School of Public Health
# course: Getting and Cleaning Data by Jeff Leek, PhD, Roger D. Peng, PhD and Brian
# Caffo, PhD.
#
# More information at https://class.coursera.org/getdata-034/human_grading
# 
# A description of the variables, the raw data, the processing and the aim of the project
# are included in the CodeBook.md and README.md files available on my github page:
# https://github.com/CoccoMarco/Getting-and-Cleaning-Data
#
# This is the main script in R to obtain a tidy dataset from the raw data available
# at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#
# NOTE: the zip file must be unzipped in the working folder of the script.
#       The script requires the DPLYR package installed.
#
# 2015 - Marco Cocconcelli

library(dplyr)  # load the library dplyr

# Load variable names
data_label <- read.table("./UCI HAR Dataset/features.txt", header = FALSE,col.names = c("id","label"))  # list of the variables names
activity_label <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)   # list of the activities names and the corresponding identifiers

# Load test data and select only variables that refer to averaged values (mean) or standard deviation values (std)
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt",header = FALSE, col.names = data_label$label)       # load test data
test_data <- select(test_data, contains(".mean."), contains(".std."))   # select a subset containing mean and std values

# Add two columns to the test data, containing the name of the activity and the identifier of the subject each observation refers to.
activity <- read.table("./UCI HAR Dataset/test/Y_test.txt",header = FALSE) # load activity identifiers relative to the test data
activity <- activity_label[activity[,1],2]      # substitute the activity identifier with the descriptive name of the activity
subject <- read.table("./UCI HAR Dataset/test/subject_test.txt",header = FALSE, col.names = "subject") # load subject identifiers relative to the test data
test_data <- cbind(activity,subject,test_data)  # add the two new columns (activity and subject) to the test data

# Load train data and select only variables that refer to averaged values (mean) or standard deviation values (std)
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt",header = FALSE, col.names = data_label$label)    # load train data
train_data <- select(train_data, contains(".mean."),contains(".std."))  # select a subset containing mean and std values

# Add two columns to the train data, containing the name of the activity and the identifier of the subject each observation refers to.
activity <- read.table("./UCI HAR Dataset/train/Y_train.txt",header = FALSE)    # load activity identifiers relative to the train data
activity <- activity_label[activity[,1],2]      # substitute the activity identifier with the descriptive name of the activity
subject <- read.table("./UCI HAR Dataset/train/subject_train.txt",header = FALSE, col.names = "subject") # load subject identifiers relative to the train data
train_data <- cbind(activity,subject,train_data)        # add the two new columns (activity and subject) to the train data

# Merge test and train data
data <- rbind(test_data,train_data) # create a new dataset (data) merging the test and training data

# Clean environment
rm(data_label,activity_label,test_data,train_data,subject,activity) # remove data no more necessary

# Grouping and averaging of the values
data <- group_by(data,activity,subject) # Group the dataset by activity and subject 
data <- summarise_each(data,funs(mean)) # For each variables (except activity and subject) compute the average of the values collected in the dataset (data)

print("Done!")  # The script has ended
