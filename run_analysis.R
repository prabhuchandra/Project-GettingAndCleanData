library(plyr)
setwd("~/Documents/class/coursera/Project-GettingAndCleanData/UCI HAR Dataset/")

# Step 1
# Merge the training and test sets to create one data set

x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/Y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/Y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

# create combined x data set
x_data <- rbind(x_train,x_test)

# create combined y data set
y_data <- rbind(y_train,y_test)

# create combined subject data set
subject_data <- rbind(subject_train,subject_test)

########################

# Step 2
# Extract only measurements on the mean and standard deviation for each measurement

features <- read.table("features.txt")

# get only columns with mean() or std() in their names
mean_and_std <- grep("-(mean|std)\\(\\)", features[,2])

# derive the desired columns from the original data set
x_data <- x_data[, mean_and_std]

# rename the columns to the original names
names(x_data) <- features[mean_and_std,2]

#########################

# Step 3
# Use descriptive activity names to name the activities in the data set

activities <- read.table("activity_labels.txt")

# rename with the correct activity names
y_data[,1] <- activities[y_data[,1], 2]

# replace the column name 
names(y_data) <- "activity"

#########################

# Step 4
# Appropriately label the data set with descriptive variable names

# replace the column name with the correct one
names(subject_data) <- "subject"

# bind all the data in a single data set 
combined_data <- cbind(x_data,y_data,subject_data)

##########################

# Step 5
# Create a second, independent tidy data set with the average of each variable for 
# each activity and each subject.

avg_data <- ddply(combined_data, .(subject, activity), function(x) colMeans(x[,1:66]))

write.table(avg_data,"average_data.txt", row.name=FALSE)
