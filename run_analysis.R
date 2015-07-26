

########### This section code does the following:
# (1) Merges the training and the test sets to create one data set.
# (2) Extracts only the measurements on the mean and standard deviation for each measurement. 

# read features
features <- read.table('UCI HAR Dataset/features.txt')[,2]
load.feat <- grepl("std[(][)]|mean[(][)]",features)

# read activity
activity <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c('Code', 'Activity.Name'))

# Load test data
test.x <- read.table("UCI HAR Dataset/test/X_test.txt",col.names = features)[,load.feat]
test.y <- read.table("UCI HAR Dataset/test/y_test.txt",col.names = c("Activity"))
test.sub <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names ="Subject.Id")
test.all <- cbind(test.x, test.y, test.sub)

# Load train data
train.x <- read.table("UCI HAR Dataset/train/X_train.txt",col.names = features)[,load.feat]
train.y <- read.table("UCI HAR Dataset/train/y_train.txt",col.names = c("Activity"))
train.sub <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names ="Subject.Id")
train.all <- cbind(train.x, train.y, train.sub)

# merge train and test data
dataset.raw <- rbind(train.all, test.all)

#############################################
# (3) Uses descriptive activity names to name the activities in the data set
dataset <- merge(x=dataset.raw,y=activity,by.x='Activity',by.y='Code',all=TRUE)[,-1]

#############################################
# (4) Appropriately labels the data set with descriptive variable names. 
colNames <- names(dataset)
colNames <-gsub("Acc", ".Accelerometer", colNames)
colNames <-gsub("Gyro", ".Gyroscope", colNames)
colNames <-gsub("Mag", ".Magnitude", colNames)
colNames <-gsub("Jerk", ".Jerk", colNames)
colNames <-gsub("^t", "Time.", colNames)
colNames <-gsub("^f", "Frequency.", colNames)
colNames <-gsub("mean..", "Mean", colNames)
colNames <-gsub("std..", "Std", colNames)
names(dataset) <- make.names(colNames)

#############################################
# (5) From the data set in step 4, creates a second, independent tidy data set
#     with the average of each variable for each activity and each subject.
library('reshape2')
data.melt <- melt(dataset,id.vars=c("Subject.Id",'Activity.Name'))
tidy.data <- dcast(data.melt,Subject.Id + Activity.Name ~ variable, mean)

write.table(tidy.data, "UCI HAR Dataset/Tidy_Data.txt", row.names=FALSE)

