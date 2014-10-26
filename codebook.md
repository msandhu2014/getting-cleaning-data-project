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
 This data was generated from the project data by combinign the test ans train data in to one frame.
 Then the column names were applied to get more descriptive observation names.
 The activity and subject data were added a columns to the combined data.
 Next only the mean() and std() data was picked to get a new frame.
 Then the average of all obervations was generated per activity per subject.
 This gave us the final table for the project.
 if you were to run the R code like this, you would get the output below.
 source("run_analysis.R")
 result <- analysis()
 > result[100:110,c(1,2,50,55)]
    subject           activity fBodyAccJerk-mean()-Y fBodyGyro-mean()-X
100      17            WALKING            -0.1942327         -0.4077167
101      17 WALKING_DOWNSTAIRS            -0.3512684         -0.3164130
102      17   WALKING_UPSTAIRS            -0.3770519         -0.4162230
103      18             LAYING            -0.9858653         -0.9924369
104      18            SITTING            -0.9836424         -0.9899615
105      18           STANDING            -0.9752437         -0.9644289
106      18            WALKING            -0.3619085         -0.6096734
107      18 WALKING_DOWNSTAIRS            -0.4659827         -0.4892323
108      18   WALKING_UPSTAIRS            -0.5796503         -0.5923237
109      19             LAYING            -0.9748783         -0.9741962
110      19            SITTING            -0.9791416         -0.9817437

Above we see rows 100 thru 110 for colums 1,2, 50 and 55.
