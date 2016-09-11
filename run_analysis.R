library(data.table)
library(dplyr)

##1. Merges the training and the test sets to create one data set
#Read training and test sets
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
names(subject_test)[1]<-"subject"
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test<-read.table("./UCI HAR Dataset/test/Y_test.txt")
names(Y_test)[1]<-"activity"

subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
names(subject_train)[1]<-"subject"
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train<-read.table("./UCI HAR Dataset/train/Y_train.txt")
names(Y_train)[1]<-"activity"

#Read feature names
features<-read.table("./UCI HAR Dataset/features.txt")
features$V1 <- NULL
feature_names<-as.vector(features$V2)
rm(features)

#Changes names of the "X_train" and "X_test" columns according to the feature names
X_test_nm<-names(X_test)
setnames(X_test,old = X_test_nm,new = feature_names)

X_train_nm<-names(X_train)
setnames(X_train,old = X_train_nm,new = feature_names)

#Merge training sets
train_merge <- cbind(subject_train,Y_train,X_train)
rm(subject_train,X_train,Y_train)

#Merge test sets
test_merge <- cbind(subject_test,Y_test,X_test)
rm(subject_test,Y_test,X_test)

#Merge training and test sets
test_train <- rbind(train_merge,test_merge)
rm(train_merge,test_merge)

##2. Extract only the measurements on the mean and standard deviation for each measurement.
feature_select<-grepl("(mean|std)\\(\\)",feature_names)
feature_final<-feature_names[feature_select]
feature_final[80]<-"subject"
feature_final[81]<-"activity"

test_train_sub <- subset(test_train, select = feature_final)

##3. Uses descriptive activity names to name the activities in the data set
activity_label <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(activity_label)[1]<-"activity"
names(activity_label)[2]<-"activity_description"

test_train_sub_2<-merge(x = test_train_sub,y = activity_label,by.x = "activity",all = TRUE)
test_train_sub_2$activity <- NULL

##4. Appropriately label the data set with descriptive variable names
#Change t to Time, f to Freq, mean() to Mean and std() to Std. Remove extra dashes
names(test_train_sub_2) <- gsub("^t", "Time", names(test_train_sub_2))
names(test_train_sub_2) <- gsub("^f", "Freq", names(test_train_sub_2))
names(test_train_sub_2) <- gsub("-mean\\(\\)", "Mean", names(test_train_sub_2))
names(test_train_sub_2) <- gsub("-std\\(\\)", "Std", names(test_train_sub_2))
names(test_train_sub_2) <- gsub("-", "", names(test_train_sub_2))

##5. From the data set in step 4, create a second, independent tidy data set 
##with the average of each variable for each activity and each subject.
test_train_sub_3<-aggregate(.~activity_description+subject, data=test_train_sub_2, FUN = mean)

names(test_train_sub_3)[-c(1,2)] <- paste0("Mean", names(test_train_sub_3)[-c(1,2)])

write.table(test_train_sub_3, "tidy_dataset.txt", row.names = FALSE)
