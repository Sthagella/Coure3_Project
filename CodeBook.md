## Course Assignment Objective
The objective of the assignment was to prepare a tidy data set given several peices of information that were gathered to represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The purpose of the code book is to provide as much information as possible to understand the data and experimental and data output choices. The files for the project are avialble at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## About the experiment (from the ReadMe file provided in the link above)
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data"

## Tasks 1 and 2
The assignment's first  and second task was to merge the Training and test files into one data file and only on varibles with mean and std deviation on each measurement

## Information on variables
The statistics were performed on signals caprtured by the accelerometer and gyroscope. The signals were used to estimate variables of the featire vector for each pattern. Here are the patterns:

The prefix 't' denotes time and 'f' denotes frequency
Acc - Accelerometer
Gyro - Gyroscope
XYZ - 3 axial signals in the XYZ direction

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

## Set of varibales used
The set of variables that were estimated from these signals and that are used for this project are: 

mean(): Mean value
std(): Standard deviation

## Task 3
Use descriptive activity names. If the Activity lables are not factorized then one would notice 1,2,3...etc, to describe activities in a coded manner. Here are the descrptions on the activity labels:
*1 WALKING
*2 WALKING_UPSTAIRS
*3 WALKING_DOWNSTAIRS
*4 SITTING
*5 STANDING*
6 LAYING

## Task 4
Appropriately label data. In the final data set you should see more descrptive names like below

"^t" = "time"
"^f" = "frequency"
"Acc" = "Accelerometer"
"Gyro" = "Gyroscope"
"Mag" = "Magnitude"
"Body" = "Body"



