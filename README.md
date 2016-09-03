#Project Instructions

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

##Review criteria

1. The submitted data set is tidy. 
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate 
all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

##Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. It is graded by student peers on 
a series of yes/no questions related to the project. Submission requirements are:

1. a tidy data set as described below, 
2. a link to a Github repository with your script for performing the analysis, and 
3. a code book that describes the variables, the data, and any transformations or work that you performed 
to clean up the data called **CodeBook.md** 

It also includes a **README.md** (this file) in the repo with the R script.

---
One of the most exciting areas in all of data science right now is wearable computing - see for example this article. 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S 
smartphone. A full description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

This repository includes one R script named **run_analysis.R** that does the following.
 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for 
each activity and each subject.

The run_analysis.R script makes the data tidy because 

+ each variable is in one column
+ each summarized observation by subject and activity is in a different row
+ there is only one kind of variable so there is only one table
+ descriptive variable names are included in the first row

##Included in this repo:
1. run_analysis R script.  Unless the data already exists in the "UCI HAR Dataset" subdirectory of you working directory, 
   it will create that directory, then download and unzip the data.
2. ReadMe markdown document
3. A Codebook markdown document
4. A tidy data text file (also uploaded to Coursera).
