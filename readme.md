This repository contains the following files   
1. readme.md - you are reading it. Starting point to read about stuff in this repository.   
2. codebook.md - describes the variables in tidy data table generated as part of the project assignment.    
3. run_analysis.R - the R code to clean project data and generate a tidy data table.    

if you were to run the R code like this, you would get the output below.  

 source("run_analysis.R")  
 result <- analysis()  
 
 result[100:110,c(1,2,50,55)]     

| subject|activity           | fBodyAccJerk-mean()-Y| fBodyGyro-mean()-X|
|-------:|:------------------|---------------------:|------------------:|
|       1|LAYING             |            -0.9224626|         -0.8502492|
|       1|SITTING            |            -0.9815795|         -0.9761615|
|       1|STANDING           |            -0.9854187|         -0.9863868|
|       1|WALKING            |            -0.0352255|         -0.3390322|
|       1|WALKING_DOWNSTAIRS |            -0.1286672|         -0.3524496|
|       1|WALKING_UPSTAIRS   |            -0.4134446|         -0.4926117|
|       2|LAYING             |            -0.9827683|         -0.9864311|
|       2|SITTING            |            -0.9771397|         -0.9826214|
|       2|STANDING           |            -0.9708513|         -0.9670371|
|       2|WALKING            |            -0.0787641|         -0.4297135|

Above, we see rows 100 thru 110 for colums 1,2, 50 and 55.