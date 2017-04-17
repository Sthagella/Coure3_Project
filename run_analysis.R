#1. Getting the data for the project from the url provided
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")
unzip(zipfile = "./data/Dataset.zip", exdir = "./data")
path_rf <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)
files

#2. Reading data from the files into variables
#Step 1 : Reading Activity Files for Test and Train
ActivityTest <- read.table(file.path(path_rf, "test", "y_test.txt"), header = FALSE)
ActivityTrain <- read.table(file.path(path_rf, "train", "y_train.txt"), header = FALSE)

#Step 2: Reading Subject Files for Test and Train
SubjectTest <- read.table(file.path(path_rf, "test", "subject_test.txt"), header = FALSE)
SubjectTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"), header = FALSE)

#Step 3: Reading Features Files for Test and Train
FeaturesTest <- read.table(file.path(path_rf, "test", "X_test.txt"), header = FALSE)
FeaturesTrain <- read.table(file.path(path_rf, "train", "X_train.txt"), header = FALSE)

#Note : view of the properties of the data frames created above might get truncated when run

#Merging the training and test data sets to create one data set (Task1 1 on assignment)
Subject <- rbind(SubjectTrain, SubjectTest)
Activity <- rbind(ActivityTrain, ActivityTest)
Features <- rbind(FeaturesTrain, FeaturesTest)

#Naming variables
names(Subject) <- c("SubjectType")
names(Activity) <- c("ActivityType")
FeaturesNames <- read.table(file.path(path_rf, "features.txt"), head = FALSE)
names(Features) <- FeaturesNames$V2

#Merging columns to get one data set
l <- cbind(Subject, Activity)
FitnessData <- cbind(Features, l)

#Features names have an extension -mean()-X, std()-Y..and so on. Only bringing in the features
#with mean() or std() per Task 2 on assignment
subFeaturesNames <- FeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", FeaturesNames$V2)]

##Only getting the mean and std features from the FitnessData data frame
aggregateType <- c(as.character(subFeaturesNames), "SubjectType", "ActivityType")
FitnessData <- subset(FitnessData, select = aggregateType)
## if you choose to look at the data uncomment the below
##str(FitnessData)

#Naming activities in the data set (Task 3 on assignment)
ActLabels <- read.table(file.path(path_rf, "activity_labels.txt"), header = FALSE)
FitnessData$ActivityType <- factor(FitnessData$ActivityType, levels = ActLabels[,1], labels = ActLabels[,2])
head(FitnessData$ActivityType, 30)

##why are activity names not showing up
##Labeling data set with descriptive variable names
names(FitnessData)<-gsub("^t", "time", names(FitnessData))
names(FitnessData)<-gsub("^f", "frequency", names(FitnessData))
names(FitnessData)<-gsub("Acc", "Accelerometer", names(FitnessData))
names(FitnessData)<-gsub("Gyro", "Gyroscope", names(FitnessData))
names(FitnessData)<-gsub("Mag", "Magnitude", names(FitnessData))
names(FitnessData)<-gsub("BodyBody", "Body", names(FitnessData))

##Creating a tidy data set
ProjectData <- aggregate(. ~SubjectType + ActivityType, FitnessData, mean)
ProjectData <- ProjectData[order(ProjectData$SubjectType, ProjectData$ActivityType), ]
head(ProjectData, 6)
write.table(ProjectData, file = "tidydata.txt", row.names = FALSE)






