# Project for Getting and Cleaning Data Course
1. Loads “ply” library
2. Sets appropriate working directory
3. Loads the data sets for training files into separate data tables.
4. Loads the data sets for test file into separate data tables.
5. Merge the respective x, y and subject with train and test data.
6. Load features into a data table.
7. Retrieve the mean and standard features from amongst all the features.
8. Pick the appropriate columns from the x data set that correspond to step 7.
9. Rename those columns from the features data table.
10. Load activities into a data table.
11. replace data in y data set with the actual activity name.
12. Name the columns.
13. Combine all data sets - x, y and subject to make a combined data set.
14. Apply ddply package to tidy data set to retrieve the average of each variable for each activity and each subject.
