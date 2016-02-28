
***
## Project Description


"The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

## Analysis

The R script ```run_analysis.R``` achieves all the requirements.

The script downloads the Human Acttivity Recognition Using Smartphones Dataset from the link provided in the working directory.
There were 30 participants in this study and each performed 6 activities.The scripts reads in the following text files from the dataset:

- *README.txt*

- *features_info.txt*: Information about the variables used on the feature vector.

- *features.txt*: List of ```561``` features (measured and estimated mean(),std() etc.).

- *test/subject_test.txt* : Each row identifies the subject [1-30] who performed the activity for each window sample. 

- *activity_labels.txt*: Links the class labels with their activity name (like WALKING, SITTING etc) .

- *train/X_train.txt*: Training set for all 30 paricipants, each column is a feature, and each row a measurement.

- *train/y_train.txt*: Training (activity) labels.

- *test/X_test.txt*: Test set, each column is a feature, and each row a measurement.

- *test/y_test.txt*: Test (activity) labels.

---

### Merge training and test sets to create one data set, extract only mean and standard deviation for each measurement

First following 3 subsets were created using ```rbind```  

* ```subject_train``` and ```subject_test``` to create ```subject``` 

* ```activity_train``` and ```activity_test``` to create ```activity``` 

* ```X_train``` and ```X_test``` to create ```featureData```.

The script then uses ```grepl()``` to extract only mean and standard deviation-related features. ```gsub()``` is used to rename the variables appropriately. The next step is to ```cbind``` the 3 data subsets into the merged test and train data set named ```tidydata```.

### Independent data set with the average of each variable for each activity and each subject (with descriptive activity names)
The suject data is categorical data, so needs to be factorized so that the average of each variable for each activity and each subject can be derived.The activity ids are replaced by corresponding activity labels (see activity_labels.txt). The tidydata is now grouped (using ```ddply()```) by subject and activity; and the averages of every feature are obtained.

The ouput ```avg_tidydata``` is viewed using ```View()``` and also written to a text file.

***




