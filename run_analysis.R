library(data.table)
library(plyr)
library(dplyr)
library(reshape2)


## NOTE: spent ages trying to get this to work using fread() 
## which should be faster before eventually discovering 
## there's known bug which prevents this from worrking
## when processing files with multiple spaces


## column headings for XTestDT and XTrainDT
featuresDT <- as.data.table(read.table("./UCI HAR Dataset/features.txt"))

XTrainDT <- as.data.table(read.table("./UCI HAR Dataset/train/X_train.txt"))
XTestDT <- as.data.table(read.table("./UCI HAR Dataset/test/X_test.txt"))

## column headings for YtestDT and YtrainDT
activityLabelsDT <- as.data.table(read.table("./UCI HAR Dataset/activity_labels.txt"))

## activity carried out for each observation
YTestDT <- as.data.table(read.table("./UCI HAR Dataset/test/y_test.txt"))
YTrainDT <- as.data.table(read.table("./UCI HAR Dataset/train/y_train.txt"))


## ID of the subject (volunteer) for which the readings were recorded for
## possibly not needed
subjectTestDT <- as.data.table(read.table("./UCI HAR Dataset/test/subject_test.txt"))
subjectTrainDT <- as.data.table(read.table("./UCI HAR Dataset/train/subject_train.txt"))

## required output

## first row = column names
## first column = activity name (by combining activity label with, YtestDT and YTrainDT)
## further columns from featuresDT

## further rows
## activities (label derived from YtestDF and YtrainDT
## XTestDT and XTraindDT

## MergedDTX <- rbindlist(list(XTrainDT, XTestDT))
## MergedDTY <- as.data.table(righ_join(YTrainDT, YTestDT))


MergedDTX <- as.data.table(full_join(XTrainDT, XTestDT))

MergedDTY <- rbindlist(list(YTrainDT, YTestDT))

setnames(MergedDT, as.character(featuresDT$V2))
setnames(MergedDTY, "Activity")

MergedDT <- cbind(MergedDTY,MergedDTX)

MergedDT <- arrange(MergedDT, Activity)

