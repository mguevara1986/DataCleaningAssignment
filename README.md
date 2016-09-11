# Data Cleaning Assignment
**Peer Graded Assignment: Getting and Cleaning Data Course Project**

The Peer Graded Assignment for Getting and Cleaning Data consisted on reading the data set collected from the accelerometers from the Samsung Galaxy S smartphone, performing an analysis on the data set, and outputing a tidy data set. A full description of the project and the data set collected is available [here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Here are the steps that must be performed before running the R script:

* Download the zip file from this [URL] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* Unzip the file
* Move ALL the files (maintaining the same directory structure) to the SAME DIRECTORY as the R script

Once those steps are complete, you can run the R script (run_analysis.R). Note that it requires the [data.table] (https://cran.r-project.org/web/packages/data.table/index.html) and [dplyr] (https://cran.r-project.org/web/packages/dplyr/index.html) packages.

The run_analysis.R script that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output of the R script is a .txt file with the [tidy data set] (https://github.com/mguevara1986/DataCleaningAssignment/blob/master/tidy_dataset.txt).

You can read more about the data and the analysis in the code book.
