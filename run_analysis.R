analysis <- function() {
  # assume we are at the root of the data directory
  xtest <- read.table("./test/X_test.txt")
  ytest <- read.table("./test/Y_test.txt")
  
  xtrain <- read.table("./train/X_train.txt")
  ytrain <- read.table("./train/Y_train.txt")
  
  # read the variable names
  cols <- read.table("./features.txt")
  # set the column names to the veariables
  colnames(xtest) <- cols[,"V2"]
  colnames(xtrain) <- cols[,"V2"]
  
  
  # read in the activity labels
  actlabels <- read.table("./activity_labels.txt")
  actlabels <- as.vector(actlabels[,"V2"])
  
  # convert activity numbers to labels
  ytestact <- factor(ytest[,"V1"],labels=actlabels)
  ytrainact <- factor(ytrain[,"V1"],labels=actlabels)
  
  # add an activity column to the test and train frames
  xtest$activity <- as.vector(ytestact)
  xtrain$activity <- as.vector(ytrainact)
  
  # read in subject data
  testsubject <- read.table("./test/subject_test.txt")
  testsubject <- as.vector(testsubject[,"V1"])
  trainsubject <- read.table("./train/subject_train.txt")
  trainsubject <- as.vector(trainsubject[,"V1"])
  
  # add new column to test and train frames
  xtest$subject <- testsubject
  xtrain$subject <- trainsubject
  
  # combine the two frames
  combo <- rbind(xtest,xtrain)
  
  # pick the columns we need
  colset <- names(combo)
  colset <- colset[grep("mean\\(\\)|std\\(\\)|activity|subject",names(xtest))]
  
  # get the subset of column data we need
  combo <- combo[,colset]
  # average all data by activity and subject
  combo <- aggregate(combo[,c(1:66)],list(activity = combo$activity, subject = combo$subject), mean)
  # reorder the columns so subject is leftmost
  combo <- combo[c(2,1,3:68)]
  
}

#analysis()