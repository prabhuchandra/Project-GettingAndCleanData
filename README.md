# Project for Getting and Cleaning Data Course
1. Loads “ply” library
2. Sets appropriate working directory
3. Loads the data sets for training files into separate data tables - x_train, y_train, subject_train
4. Loads the data sets for test file into separate data tables - x_test, y_test, subject_test
5. Merge the respective x, y and subject with train and test data - x_data, y_data, subject_data
6. Load features into a data table - features
7. Retrieve the mean and standard features from amongst all the features - mean_and_std
8. Pick the appropriate columns from the x data set that correspond to step 7
9. Rename those columns from the features data table.
10. Load activities into a data table - activties
11. replace data in y data set with the actual activity name.
12. Name the columns.
13. Combine all data sets - x, y and subject to make a combined data set - combined_data
14. Apply ddply package to tidy data set to retrieve the average of each variable for each activity and each subject - avg_data.
15. write it into average_data.txt file
