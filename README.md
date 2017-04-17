This repo shows the files required for the course project. It includes the R script runanalysis.r and a text file names tidydata.txt that has the tidy data set. The objective of the project was to merge data from a set of Test and Training data provided in the zip files in the link for certain criteria only (vairables with mean and std only for instance).

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In order to complete the assignment, the following steps were taken:

# Review raw files to understand nature of data and possible meaning of variables
1. To accomplish this I exported the Test and Training files to excel just as a sanity check to see what the nature of the data was
2. The Features files included information about variables for feature vectors
3. The Activity Lables file showed the name of each activity that was shown in the y_test and y_train files
4. The observed experimental values recorded were shown in the X_test and X_train files

# Follow instructions in the assignment to create the data set needed
1. Based on the review, the data sets can be arranged into data frames that can be merged to provide the needed data set (much like tables in a reltational database)
2. Features file = Activity Info; Activity Labels file = labeling or setting levels; Data/Value = X_Test and X_Train files
3. The R script has comments included to follow through each step of the way
4. The tidydata.txt file has the end result
5. The code book explains the variables
