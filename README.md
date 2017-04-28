# getting-and-cleaning-data-course-project
This is my repo that I will submit to the Coursera Data Science Specialization - Getting and Cleaning Data final assignment.

The script run_analysis.R is a code that pulls data from the UCI Machine Learning Repository experiment "Human Activity Recognition Using Smartphones Data Set"

Information from the study can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data set pulled into the formula can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After pulling the data in from the above URL, the script itself does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Additional information regarding the the variables, the data, and data cleaning transformations can be found in the file CodeBook.md.
