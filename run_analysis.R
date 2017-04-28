###Create "data" folder in working directory, pull data from url, and unzip
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")
unzip(zipfile="./data/Dataset.zip",exdir="./data")
data.path <- file.path("./data" , "UCI HAR Dataset")

###Read in all data
activity_data_train <- read.table(file.path(data.path, "train", "Y_train.txt"), header = F)
activity_data_test <- read.table(file.path(data.path, "test", "Y_test.txt"), header = F)
subject_data_train <- read.table(file.path(data.path, "train", "subject_train.txt"), header = F)
subject_data_test <- read.table(file.path(data.path, "test", "subject_test.txt"), header = F)
features_data_train <- read.table(file.path(data.path, "train", "X_train.txt"), header = F)
features_data_test <- read.table(file.path(data.path, "test", "X_test.txt"), header = F)

### Merge the training and test data sets into one new data set
## Combine train and test sets together
activity_data <- rbind(activity_data_train, activity_data_test)
subject_data <- rbind(subject_data_train, subject_data_test)
features_data <- rbind(features_data_train, features_data_test)
## Assign names to variables
names(activity_data) <- c("activity")
names(subject_data) <- c("subject")
## use txt file to assign names to features
features_names <- read.table(file.path(data.path, "features.txt"), head = F)
names(features_data) <- features_names$V2
## Combine all new tables by column
combined <- cbind(activity_data, subject_data)
data <- cbind(combined, features_data)

### Extract means and SDs for each measurement
feat_names_subset <- features_names$V2[grep("mean\\(\\)|std\\(\\)", features_names$V2)]
new_names <- c(as.character(feat_names_subset), "activity", "subject")
data_subset <- subset(data, select = new_names)

### Use descriptive activity names to name the activities in the data set
## Read in the data from the activities labels txt file
activites <- read.table(file.path(data.path, "activity_labels.txt"), header = F)
## Replace values with descriptive names from txt file
data_subset$activity <-factor(data_subset$activity);
data_subset$activity <- factor(data_subset$activity,labels=as.character(activites$V2))

### Label the data set with descriptive variable names
names(data_subset) <- gsub("^t", "time", names(data_subset))
names(data_subset) <- gsub("^f", "frequency", names(data_subset))
names(data_subset) <- gsub("Acc", "Accelerometer", names(data_subset))
names(data_subset) <- gsub("Gyro", "Gyroscope", names(data_subset))
names(data_subset) <- gsub("Mag", "Magnitude", names(data_subset))
names(data_subset) <- gsub("BodyBody", "Body", names(data_subset))

### Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
tidy_data <- aggregate(. ~subject + activity, data_subset, mean)
tidy_data <- tidy_data[order(tidy_data$subject, tidy_data$activity),]
write.table(tidy_data, file = "tidydata.txt", row.name = F)
