# CodeBook

## **Overview**
The data set used is the result of a set of experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.*

## **Description of the input data set**

* features.txt: Names of the 561 features.
* activity_labels.txt: Names and IDs for each of the 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

* X_train.txt: 7352 observations of the 561 features, for 70% of the volunteers (21 out of the 30)
* subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt (1 to 30)
* Y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt (1 to 6)

* X_test.txt: 2947 observations of the 561 features, for 30% of the volunteers (9 out of the 30)
* subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt (1 to 30)
* Y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt (1 to 6)

The data set also includes the raw signal data ("Inertial Signals" folders). These files are not used in the present analysis.
Check the README.txt file for further details about this dataset.

## **Description of the transformations to clean up the data**

1. Read training and test sets
2. Add appropriate column headers 
3. Combine training and test sets into a single data set
4. Extract only the measurements on the mean and standard deviation for each measurement
5. Appropriately label the data set with descriptive variable names: Change t to Time, f to Freq, mean() to Mean and std() to Std. Remove extra dashes
6. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
7. Appropriately label the tidy data set with descriptive variable names:Add Mean at the beginning of every feature
8. Output the tidy data set to a .txt file

## **Description of the output tidy data set**

The tidy data set contains the mean of each feature for each subject and each activity. Each subject (a total of 30) has 6 rows in the tidy data set (one row for each activity), and each row contains the mean value for each of the 66 features for that subject/activity combination. There are a total of 180 rows (30 subject * 6 activities) and 68 columns (activity + subject + 66 features).

### **Activity and Subject**

These variables identify the unique subject/activity pair the variables relate to:

* **activity_description**: the string activity name:
  * WALKING
  * WALKING_UPSTAIRS
  * WALKING_DOWNSTAIRS
  * SITTING
  * STANDING
  * LAYING
* **subject**: the integer subject ID (from 1 to 30)

### **Feature Means**

These variables are the mean of each of the 66 features measured for each subject and activity.

* Time domain body acceleration mean along X, Y, and Z:
  * MeanTimeBodyAccMeanX
  * MeanTimeBodyAccMeanY
  * MeanTimeBodyAccMeanZ
* Time domain body acceleration standard deviation along X, Y, and Z:
  * MeanTimeBodyAccStdX
  * MeanTimeBodyAccStdY
  * MeanTimeBodyAccStdZ
* Time domain gravity acceleration mean along X, Y, and Z:
  * MeanTimeGravityAccMeanX 
  * MeanTimeGravityAccMeanY
  * MeanTimeGravityAccMeanZ
* Time domain gravity acceleration standard deviation along X, Y, and Z:
  * MeanTimeGravityAccStdX
  * MeanTimeGravityAccStdY
  * MeanTimeGravityAccStdZ
* Time domain body jerk mean along X, Y, and Z:
  * MeanTimeBodyAccJerkMeanX
  * MeanTimeBodyAccJerkMeanY
  * MeanTimeBodyAccJerkMeanZ
* Time domain body jerk standard deviation along X, Y, and Z:
  * MeanTimeBodyAccJerkStdX
  * MeanTimeBodyAccJerkStdY
  * MeanTimeBodyAccJerkStdZ
* Time domain gyroscope mean along X, Y, and Z:
  * MeanTimeBodyGyroMeanX
  * MeanTimeBodyGyroMeanY
  * MeanTimeBodyGyroMeanZ
* Time domain gyroscope standard deviation along X, Y, and Z:
  * MeanTimeBodyGyroStdX
  * MeanTimeBodyGyroStdY
  * MeanTimeBodyGyroStdZ
* Time domain gyroscope jerk mean along X, Y, and Z:
  * MeanTimeBodyGyroJerkMeanX
  * MeanTimeBodyGyroJerkMeanY
  * MeanTimeBodyGyroJerkMeanZ
* Time domain gyroscope jerk standard deviation along X, Y, and Z:
  * MeanTimeBodyGyroJerkStdX
  * MeanTimeBodyGyroJerkStdY
  * MeanTimeBodyGyroJerkStdZ
* Time domain body acceleration magnitude mean:
  * MeanTimeBodyAccMagMean
* Time domain body acceleration magnitude standard deviation:
  * MeanTimeBodyAccMagStd
* Time domain gravity acceleration magnitude mean:
  * MeanTimeGravityAccMagMean
* Time domain gravity acceleration magnitude standard deviation:
  * MeanTimeGravityAccMagStd
* Time domain body jerk magnitude mean:
 * MeanTimeBodyAccJerkMagMean
* Time domain body jerk magnitude standard deviation:
  * MeanTimeBodyAccJerkMagStd
* Time domain gyroscope magnitude mean:
  * MeanTimeBodyGyroMagMean
* Time domain gyroscope magnitude standard deviation:
  * MeanTimeBodyGyroMagStd
* Time domain gyroscope jerk magnitude mean:
  * MeanTimeBodyGyroJerkMagMean
* Time domain gyroscope jerk magnitude standard deviation:
  * MeanTimeBodyGyroJerkMagStd
* Frequency domain body acceleration mean along X, Y, and Z:
  * MeanFrequencyBodyAccMeanX
  * MeanFrequencyBodyAccMeanY
  * MeanFrequencyBodyAccMeanZ
* Frequency domain body acceleration standard deviation along X, Y, and Z:
  * MeanFrequencyBodyAccStdX
  * MeanFrequencyBodyAccStdY
  * MeanFrequencyBodyAccStdZ
* Frequency domain body jerk mean along X, Y, and Z:
  * MeanFrequencyBodyAccJerkMeanX
  * MeanFrequencyBodyAccJerkMeanY
  * MeanFrequencyBodyAccJerkMeanZ
* Frequency domain body jerk standard deviation along X, Y, and Z:
  * MeanFrequencyBodyAccJerkStdX
  * MeanFrequencyBodyAccJerkStdY
  * MeanFrequencyBodyAccJerkStdZ
* Frequency domain gyroscope mean along X, Y, and Z:
  * MeanFrequencyBodyGyroMeanX
  * MeanFrequencyBodyGyroMeanY
  * MeanFrequencyBodyGyroMeanZ
* Frequency domain gyroscope standard deviation along X, Y, and Z:
  * MeanFrequencyBodyGyroStdX
  * MeanFrequencyBodyGyroStdY
  * MeanFrequencyBodyGyroStdZ
* Frequency domain body acceleration magnitude mean:
  * MeanFrequencyBodyAccMagMean
* Frequency domain body acceleration magnitude standard deviation:
  * MeanFrequencyBodyAccMagStd
* Frequency domain body jerk magnitude mean:
  * MeanFrequencyBodyBodyAccJerkMagMean
* Frequency domain body jerk magnitude standard deviation:
  * MeanFrequencyBodyBodyAccJerkMagStd
* Frequency domain gyroscope magnitude mean:
  * MeanFrequencyBodyBodyGyroMagMean
* Frequency domain gyroscope magnitude standard deviation:
  * MeanFrequencyBodyBodyGyroMagStd
* Frequency domain gyroscope jerk magnitude mean:
  * MeanFrequencyBodyBodyGyroJerkMagMean
* Frequency domain gyroscope jerk magnitude standard deviation:
  * MeanFrequencyBodyBodyGyroJerkMagStd
