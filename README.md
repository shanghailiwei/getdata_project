# Getting and Cleaning Data Course Project

This project contains one R script, `run_analysis.R`, which will calculate means per activity, per subject of the mean and Standard deviation of the Human Activity Recognition Using Smartphones Dataset Version 1.0 [1]. This dataset should be [downloaded](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extracted directly into the data directory.

Once executed, the resulting dataset maybe found at `FinalData.txt`

For futher details, refer to [CodeBook.md](CodeBook.md)

## References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
<activityrecognition@smartlab.ws>

## Required R Packages

The R package `reshape2` is required to run this script. This maybe installed with,

```{r}
install.package("reshape2")
```

##Project for "Getting and cleaning data" course.

1.Merges the training and the test sets to create one data set.

2.Extracts only the measurements on the mean and standard deviation for each measurement.

3.Uses descriptive activity names to name the activities in the data set

4.Appropriately labels the data set with descriptive variable names.

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

