This project deals with data collected by a smartphone worn by different people, also known as subjects.
The data is collected during the following 6 activities performaed by the subjects 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
The observation names follow this structure
<domain><motion>-<statistic>-<axis>
<domain> - can be "t" for time or "f" for frequency
<motion> - can be of the following types
	tBodyAcc
	tGravityAcc
	tBodyAccJerk
	tBodyGyro
	tBodyGyroJerk
	tBodyAccMag
	tGravityAccMag
	tBodyAccJerkMag
	tBodyGyroMag
	tBodyGyroJerkMag
	fBodyAcc
	fBodyAccJerk
	fBodyGyro
	fBodyAccMag
	fBodyAccJerkMag
	fBodyGyroMag
	fBodyGyroJerkMag
	
<statistic> - can be a calculation. mean()  - for mean of the observation
              std() - for standard deviation of the observation
			  
<axis> - one of the three cartesian axis, viz. X,Y,Z.
The final table has 68 observations.
 The first one is subject number. The second is the name of the activity the subject was performing
 when the observations in the row were taken. For each observation the average has been calculated for each activity of a subject.
 This data was generated from the project data by combining the test and train data in to one frame.
 Then the column names were applied to get more descriptive observation names.
 The activity and subject data were added as columns to the combined data.
 Next, only the mean() and std() data was picked to get a new frame.
 Then the average of all obervations was generated per activity per subject.
 This gave us the final table for the project.
 