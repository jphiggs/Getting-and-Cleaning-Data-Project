
if(!file.exists("UCI HAR Dataset")){
    #####  Download the data to the current working directory and unzip it
    dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(dataURL, "rawData.zip")
    unzip("rawData.zip")
}

#####  Get the data
# List of all features
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE,
                    col.names = c("featureID", "featureName"))
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE,
                    col.names = c("activityID", "activityName"))
# Sensor Training set
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
# Sensor Training activity labels
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activityID")
# Sensor Test set
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
# Sensor Test activity labels
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activityID")
# Subject data - Each row identifies the subject who performed the activity for each window sample.
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                    col.names = "subjectID")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                    col.names = "subjectID")

#####  1. Merge the training and the test sets to create one data set.
# http://www.statmethods.net/management/merging.html
# plyr: http://plyr.had.co.nz
# reshaping: http://www.statmethods.net/management.reshape.html
train.data <- cbind(subject_train, y_train, X_train)
test.data  <- cbind(subject_test, y_test, X_test)
all.data   <- rbind(train.data, test.data)

#####  2. Extracts only the measurements on the mean and standard deviation
#####  for each measurement
meanStdFeatureNames <- features[grep("mean\\(\\)|std\\(\\)", features$featureName), ]

meanStd.data <- all.data[, c(1:2, meanStdFeatureNames$featureID + 2)] #[1:length(meanStdFeatureNames$featureID)])] 

#####  3. Use descriptive activity names to name the activities in the data set
meanStd.data <- merge(meanStd.data, activities, by="activityID")
# rearrange columns
meanStd.data[, 1] <- meanStd.data[,69]  
meanStd.data <- meanStd.data[, 1:68]

#####  4. Appropriately labels the data set with descriptive variable names.
#####  Descriptive variable names means names based on the action the variable 
#####  is recording, for example the Jerk of the body on the z axis of the phone.
varNames <- meanStdFeatureNames[,2]
# Eliminate parentheses
varNames <- gsub('\\(|\\)',"", varNames)
# Modify variable Names
varNames <- gsub('^t',"time-",varNames)
varNames <- gsub('^f',"freq-",varNames)
varNames <- gsub('Acc',"acceleration",varNames)
varNames <- gsub('Gyro',"angularvelocity",varNames)
varNames <- gsub('Mag',"magnitude",varNames)
varNames <- gsub('std',".stdev",varNames)
varNames <- gsub('\\.',"",varNames)
varNames <- gsub('Body',"body",varNames)
varNames <- gsub('Gravity',"gravity",varNames)
names(meanStd.data) <- c("activityID", "subjectID", varNames)


#####  5. From the data set in step 4, create a second, independent tidy data 
#####  set with the average of each variable for each activity and each subject.
tidyData <- aggregate(meanStd.data, by=list(activity=meanStd.data$activityID, subject=meanStd.data$subjectID), FUN=mean)
tidyData <- tidyData[, !(colnames(tidyData) %in% c("activityID", "subjectID"))]
write.table(tidyData, "tidyData.txt", row.name = FALSE)

