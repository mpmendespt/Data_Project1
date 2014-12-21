Getting and Cleaning Data * Project

For the provided UCI HAR Dataset the following vars are set from run_analysis.R. 

Tidy Mean:

A data.table named `tidy.mean` is set with the following columns:
-------------------------------------------------------------------------------------
# column       # description                                              # type    #
# ************ # ******************************************************** # ******* #
# Subject      # Identifier of the subject                                # integer #
# Activity     # Label of the activity                                    # factor  #
# MeanSamples  # Mean of variables by Subject + Activity provided in tidy # numeric #

Tidy

A data.table named `tidy` is set with the following columns:
-------------------------------------------------------------- 
# Column                       # Original Name               #
# **************************** # *************************** #
# Activity                     #                             #
# Subject                      #                             #
# Time.BodyAcc.Mean.X          # tBodyAcc*mean()*X           #
# Time.BodyAcc.Mean.Y          # tBodyAcc*mean()*Y           #
# Time.BodyAcc.Mean.Z          # tBodyAcc*mean()*Z           #
# Time.BodyAcc.Std.X           # tBodyAcc*std()*X            #
# Time.BodyAcc.Std.Y           # tBodyAcc*std()*Y            #
# Time.BodyAcc.Std.Z           # tBodyAcc*std()*Z            #
# Time.GravityAcc.Mean.X       # tGravityAcc*mean()*X        #
# Time.GravityAcc.Mean.Y       # tGravityAcc*mean()*Y        #
# Time.GravityAcc.Mean.Z       # tGravityAcc*mean()*Z        #
# Time.GravityAcc.Std.X        # tGravityAcc*std()*X         #
# Time.GravityAcc.Std.Y        # tGravityAcc*std()*Y         #
# Time.GravityAcc.Std.Z        # tGravityAcc*std()*Z         #
# Time.BodyAccJerk.Mean.X      # tBodyAccJerk*mean()*X       #
# Time.BodyAccJerk.Mean.Y      # tBodyAccJerk*mean()*Y       #
# Time.BodyAccJerk.Mean.Z      # tBodyAccJerk*mean()*Z       #
# Time.BodyAccJerk.Std.X       # tBodyAccJerk*std()*X        #
# Time.BodyAccJerk.Std.Y       # tBodyAccJerk*std()*Y        #
# Time.BodyAccJerk.Std.Z       # tBodyAccJerk*std()*Z        #
# Time.BodyGyro.Mean.X         # tBodyGyro*mean()*X          #
# Time.BodyGyro.Mean.Y         # tBodyGyro*mean()*Y          #
# Time.BodyGyro.Mean.Z         # tBodyGyro*mean()*Z          #
# Time.BodyGyro.Std.X          # tBodyGyro*std()*X           #
# Time.BodyGyro.Std.Y          # tBodyGyro*std()*Y           #
# Time.BodyGyro.Std.Z          # tBodyGyro*std()*Z           #
# Time.BodyGyroJerk.Mean.X     # tBodyGyroJerk*mean()*X      #
# Time.BodyGyroJerk.Mean.Y     # tBodyGyroJerk*mean()*Y      #
# Time.BodyGyroJerk.Mean.Z     # tBodyGyroJerk*mean()*Z      #
# Time.BodyGyroJerk.Std.X      # tBodyGyroJerk*std()*X       #
# Time.BodyGyroJerk.Std.Y      # tBodyGyroJerk*std()*Y       #
# Time.BodyGyroJerk.Std.Z      # tBodyGyroJerk*std()*Z       #
# Time.BodyAccMag.Mean         # tBodyAccMag*mean()          #
# Time.BodyAccMag.Std          # tBodyAccMag*std()           #
# Time.GravityAccMag.Mean      # tGravityAccMag*mean()       #
# Time.GravityAccMag.Std       # tGravityAccMag*std()        #
# Time.BodyAccJerkMag.Mean     # tBodyAccJerkMag*mean()      #
# Time.BodyAccJerkMag.Std      # tBodyAccJerkMag*std()       #
# Time.BodyGyroMag.Mean        # tBodyGyroMag*mean()         #
# Time.BodyGyroMag.Std         # tBodyGyroMag*std()          #
# Time.BodyGyroJerkMag.Mean    # tBodyGyroJerkMag*mean()     #
# Time.BodyGyroJerkMag.Std     # tBodyGyroJerkMag*std()      #
# FFT.BodyAcc.Mean.X           # fBodyAcc*mean()*X           #
# FFT.BodyAcc.Mean.Y           # fBodyAcc*mean()*Y           #
# FFT.BodyAcc.Mean.Z           # fBodyAcc*mean()*Z           #
# FFT.BodyAcc.Std.X            # fBodyAcc*std()*X            #
# FFT.BodyAcc.Std.Y            # fBodyAcc*std()*Y            #
# FFT.BodyAcc.Std.Z            # fBodyAcc*std()*Z            #
# FFT.BodyAccJerk.Mean.X       # fBodyAccJerk*mean()*X       #
# FFT.BodyAccJerk.Mean.Y       # fBodyAccJerk*mean()*Y       #
# FFT.BodyAccJerk.Mean.Z       # fBodyAccJerk*mean()*Z       #
# FFT.BodyAccJerk.Std.X        # fBodyAccJerk*std()*X        #
# FFT.BodyAccJerk.Std.Y        # fBodyAccJerk*std()*Y        #
# FFT.BodyAccJerk.Std.Z        # fBodyAccJerk*std()*Z        #
# FFT.BodyGyro.Mean.X          # fBodyGyro*mean()*X          #
# FFT.BodyGyro.Mean.Y          # fBodyGyro*mean()*Y          #
# FFT.BodyGyro.Mean.Z          # fBodyGyro*mean()*Z          #
# FFT.BodyGyro.Std.X           # fBodyGyro*std()*X           #
# FFT.BodyGyro.Std.Y           # fBodyGyro*std()*Y           #
# FFT.BodyGyro.Std.Z           # fBodyGyro*std()*Z           #
# FFT.BodyAccMag.Mean          # fBodyAccMag*mean()          #
# FFT.BodyAccMag.Std           # fBodyAccMag*std()           #
# FFT.BodyBodyAccJerkMag.Mean  # fBodyBodyAccJerkMag*mean()  #
# FFT.BodyBodyAccJerkMag.Std   # fBodyBodyAccJerkMag*std()   #
# FFT.BodyBodyGyroMag.Mean     # fBodyBodyGyroMag*mean()     #
# FFT.BodyBodyGyroMag.Std      # fBodyBodyGyroMag*std()      #
# FFT.BodyBodyGyroJerkMag.Mean # fBodyBodyGyroJerkMag*mean() #
# FFT.BodyBodyGyroJerkMag.Std  # fBodyBodyGyroJerkMag*std()  #

# Notes

Source data is https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
