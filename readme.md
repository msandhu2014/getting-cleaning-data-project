This repository contains the following files
1. readme.md - you are reading it. Starting point to read about stuff in this repository.
2. codebook.md - describes the variables in tidy data table generated as part of the project assignment.
3. run_analysis.R - the R code to clean project data and generate a tidy data table.

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

Above, we see rows 100 thru 110 for colums 1,2, 50 and 55.
