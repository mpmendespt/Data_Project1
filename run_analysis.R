#
#  source("run_analysis.R", print.eval=TRUE)
#
library(plyr)
library(reshape2)

##

setwd("D:/DL/_DL_/_ELECTRONICA_/_ESTUDO_2/Getting and Cleaning Data/Getting and Cleaning Data Course Project/web2")

# Download the file
if(!file.exists("./data")){dir.create("./data")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="auto")}

#Unzip the file

unzip(zipfile="./data/Dataset.zip",exdir="./data")

#unzipped files are in the folder: UCI HAR Dataset.

path_rf <- file.path("./data" , "UCI HAR Dataset")
#files <- list.files(path_rf, recursive=TRUE)

#files
#------------------------

root.dir <-  path_rf 
data.set <- list()

# features.txt
data.set$features <- read.table(paste(root.dir, "features.txt", sep="/"), col.names=c('id', 'name'), stringsAsFactors=FALSE)

# activity_features
data.set$activity_labels <- read.table(paste(root.dir, "activity_labels.txt", sep="/"), col.names=c('id', 'Activity'))


# test set
data.set$test <- cbind(subject=read.table(paste(root.dir, "test", "subject_test.txt", sep="/"), col.names="Subject"),
                       y=read.table(paste(root.dir, "test", "y_test.txt", sep="/"), col.names="Activity.ID"),
                       x=read.table(paste(root.dir, "test", "x_test.txt", sep="/")))

# train set 
data.set$train <- cbind(subject=read.table(paste(root.dir, "train", "subject_train.txt", sep="/"), col.names="Subject"),
                        y=read.table(paste(root.dir, "train", "y_train.txt", sep="/"), col.names="Activity.ID"),
                        x=read.table(paste(root.dir, "train", "X_train.txt", sep="/")))

rename.features <- function(col) {
    col <- gsub("tBody", "Time.Body", col)
    col <- gsub("tGravity", "Time.Gravity", col)

    col <- gsub("fBody", "FFT.Body", col)
    col <- gsub("fGravity", "FFT.Gravity", col)

    col <- gsub("\\-mean\\(\\)\\-", ".Mean.", col)
    col <- gsub("\\-std\\(\\)\\-", ".Std.", col)

    col <- gsub("\\-mean\\(\\)", ".Mean", col)
    col <- gsub("\\-std\\(\\)", ".Std", col)

    return(col)
}

# tidy
tidy <- rbind(data.set$test, data.set$train)[,c(1, 2, grep("mean\\(|std\\(", data.set$features$name) + 2)]

# names
names(tidy) <- c("Subject", "Activity.ID", rename.features(data.set$features$name[grep("mean\\(|std\\(", data.set$features$name)]))

# Activity.ID
tidy <- merge(tidy, data.set$activity_labels, by.x="Activity.ID", by.y="id")
tidy <- tidy[,!(names(tidy) %in% c("Activity.ID"))]

# Activity
tidy.mean <- ddply(melt(tidy, id.vars=c("Subject", "Activity")), .(Subject, Activity), summarise, MeanSamples=mean(value))

# tidy.mean.txt
write.csv(tidy.mean, file = "tidy.mean.txt",row.names = FALSE)
write.csv(tidy, file = "tidy.txt",row.names = FALSE)
