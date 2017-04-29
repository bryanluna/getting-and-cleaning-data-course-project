# Code Book

The script `run_analysis.R` performs the following:

1. Reads in [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) from the internet.
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names.
6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The final output from the code is a `.txt` file `tidydata.txt`

## Identifiers
* `subject` - the ID of the test subject
* `activity` - the type of activity the subject was performing while the measurements were collected

## Variables/Measurements
* `timeBodyAccelerometer-mean()-X`
* `timeBodyAccelerometer-mean()-Y` 
* `timeBodyAccelerometer-mean()-Z`
* `timeBodyAccelerometer-std()-X`
* `timeBodyAccelerometer-std()-Y`
* `timeBodyAccelerometer-std()-Z`
* `timeGravityAccelerometer-mean()-X`
* `timeGravityAccelerometer-mean()-Y`
* `timeGravityAccelerometer-std()-X`
* `timeGravityAccelerometer-std()-Z`
* `timeBodyAccelerometerJerk-mean()-X`
* `timeBodyAccelerometerJerk-mean()-Y`
* `timeBodyAccelerometerJerk-mean()-Z`
* `timeBodyAccelerometerJerk-std()-X`
* `timeBodyAccelerometerJerk-std()-Y`
* `timeBodyAccelerometerJerk-std()-Z`
* `timeBodyGyroscope-mean()-X`
* `timeBodyGyroscope-mean()-Y`
* `timeBodyGyroscope-mean()-Z`
* `timeBodyGyroscope-std()-X`
* `timeBodyGyroscope-std()-Y`
* `timeBodyGyroscope-std()-Z`
* `timeBodyGyroscopeJerk-mean()-X`
* `timeBodyGyroscopeJerk-mean()-Y`
* `timeBodyGyroscopeJerk-mean()-Z`
* `timeBodyGyroscopeJerk-std()-X`
* `timeBodyGyroscopeJerk-std()-Y`
* `timeBodyGyroscopeJerk-std()-Z`
* `timeBodyAccelerometerMagnitude-mean()`
* `timeBodyAccelerometerMagnitude-std()`
* `timeGravityAccelerometerMagnitude-mean()`
* `timeGravityAccelerometerMagnitude-std()`
* `timeBodyAccelerometerJerkMagnitude-mean()`
* `timeBodyAccelerometerJerkMagnitude-std()`
* `timeBodyGyroscopeMagnitude-mean()`
* `timeBodyGyroscopeMagnitude-std()`
* `timeBodyGyroscopeJerkMagnitude-mean()`
* `timeBodyGyroscopeJerkMagnitude-std()`
* `frequencyBodyAccelerometer-mean()-X`
* `frequencyBodyAccelerometer-mean()-Y`
* `frequencyBodyAccelerometer-mean()-Z`
* `frequencyBodyAccelerometer-std()-X`
* `frequencyBodyAccelerometer-std()-Y`
* `frequencyBodyAccelerometer-std()-Z`
* `frequencyBodyAccelerometerJerk-mean()-X`
* `frequencyBodyAccelerometerJerk-mean()-Y`
* `frequencyBodyAccelerometerJerk-mean()-Z`
* `frequencyBodyAccelerometerJerk-std()-X`
* `frequencyBodyAccelerometerJerk-std()-Y`
* `frequencyBodyAccelerometerJerk-std()-Z`
* `frequencyBodyGyroscope-mean()-X`
* `frequencyBodyGyroscope-mean()-Y`
* `frequencyBodyGyroscope-mean()-Z`
* `frequencyBodyGyroscope-std()-X`
* `frequencyBodyGyroscope-std()-Y`
* `frequencyBodyGyroscope-std()-Z`
* `frequencyBodyAccelerometerMagnitude-mean()`
* `frequencyBodyAccelerometerMagnitude-std()`
* `frequencyBodyAccelerometerJerkMagnitude-mean()`
* `frequencyBodyAccelerometerJerkMagnitude-std()`
* `frequencyBodyGyroscopeMagnitude-mean()`
* `frequencyBodyGyroscopeMagnitude-std()`
* `frequencyBodyGyroscopeJerkMagnitude-mean()`
* `frequencyBodyGyroscopeJerkMagnitude-std()`
