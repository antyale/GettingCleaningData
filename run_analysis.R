##This script uses plyr package
require(plyr)

##download and unzip the data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","dataset.zip")
unzip("dataset.zip")


##This function will read the corresponding files
##Returns the 
loadDatasetPrepared <- function(dataset)
{
    ##get the folders and files paths needed
    mainFolder <- "UCI HAR Dataset/"
    dsFolder <- paste(mainFolder,dataset,"/",sep="")
    dsFile <- paste(dsFolder,"X_",dataset,".txt",sep="")
    dsActivitiesFile <- paste(dsFolder,"y_",dataset,".txt",sep="")
    dsSubjectFile <- paste(dsFolder,"subject_",dataset,".txt",sep="")
    
    ##Read features and activities
    features <- read.table(file= paste(mainFolder, "features.txt", sep=""), 
                             header=FALSE,
                             col.names=c("feature.id","feature.name"))
    
    activityLabels <- read.table(file=paste(mainFolder, "activity_labels.txt", sep=""), 
                                 header=FALSE,
                                 col.names=c("activity.id","activity.name"))
    
    ##Read the main dataset (measurements)
    data <- read.table(file=dsFile, header=FALSE, col.names=features$feature.name)
    
    ##Extracts only the measurements on the mean and standard deviation for each measurement
    filterColumns <- regexpr(pattern="(mean|std)\\(\\)", text=features$feature.name) >0
    data <- data[,filterColumns]
    
    ##Get the activity descriptions for each measurement
    activity <- read.table(file=dsActivitiesFile, header=FALSE,col.names=c("activity.id"))
    activity <- merge(activity, activityLabels, all=TRUE)
    
    ##Get the subject for each measurement
    subject <- read.table(file=dsSubjectFile, header=FALSE,col.names=c("subject"))
    
    ##Combine all in one dataset and return it
    data$activity.name <- unlist(activity$activity.name)
    data$subject <- unlist(subject)
    
    data
}

##Get training and test datasets
dsTrain <- loadDatasetPrepared("train")
dsTest <- loadDatasetPrepared("test")

##Merge observations from both datasets
mergedDS <- rbind(dsTrain, dsTest)

##Calculate the mean for all the variables group by subject and activity
cleanDS <- ddply(.data=mergedDS, .variables= .(subject, activity.name),.fun= numcolwise(mean))

write.csv(cleanDS,file="clean_data.txt",row.names=FALSE)
