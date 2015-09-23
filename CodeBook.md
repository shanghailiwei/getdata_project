# CookBook

# Input Data

The script assumes the UCI dataset is extracted directly into `./`. See the [README.md](README.md) for further details.

# Output Data

The resulting `FinalData.txt` dataset includes mean and standard deviation variables for the following original variables,

"subject" :
    1-30
"activity" :
    WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING
 [1] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"          
 [4] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
 [7] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"      
[10] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[13] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"     
[16] "tBodyAccMag-mean()"          "tGravityAccMag-mean()"       "tBodyAccJerkMag-mean()"     
[19] "tBodyGyroMag-mean()"         "tBodyGyroJerkMag-mean()"     "fBodyAcc-mean()-X"          
[22] "fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"           "fBodyAccJerk-mean()-X"      
[25] "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"       "fBodyGyro-mean()-X"         
[28] "fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"          "fBodyAccMag-mean()"         
[31] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroJerkMag-mean()"
[34] "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
[37] "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
[40] "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[43] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
[46] "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[49] "tBodyAccMag-std()"           "tGravityAccMag-std()"        "tBodyAccJerkMag-std()"      
[52] "tBodyGyroMag-std()"          "tBodyGyroJerkMag-std()"      "fBodyAcc-std()-X"           
[55] "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"            "fBodyAccJerk-std()-X"       
[58] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"        "fBodyGyro-std()-X"          
[61] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"           "fBodyAccMag-std()"          
[64] "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-std()" 

The above variables where choosen as they included either _mean_ or _std_ in their original names.

# Transformations

The script, `run_analysis.R`, does the following,

* Load the various files which make-up the UCI dataset
* Merges the three `test` and three `train` files into a single data table, setting textual columns heading where possible
* Creates a smaller second dataset, containing only mean and std variables
* Computes the means of this secondary dataset, group by subject/activity.
* Saves this last dataset to `FinalData.txt`


