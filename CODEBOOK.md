# CODEBOOK
## Subject and Activity Identification

### subject

An identifier of the particant in the study group (range from **[1-30]**) 

### activity

An numerical indicator of activity performed by the subject.

Each person performed six activities.

activity | activitynames
------------- | ------------- 
1| WALKING
2| WALKING_UPSTAIRS
3| WALKING_DOWNSTAIRS
4| SIITING
5| STANDING
6| LAYING

## Feature Variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

***

#### The units used for accelerations (total and body) are g's (m/sec^2) and the gyroscope units are rads/sec

***

**tBodyAcc.mean.X**

mean of body acceleration in the X direction

**tBodyAcc.mean.Y**

mean of body acceleration in the Y direction

**tBodyAcc.mean.Z**

mean of body acceleration in the Z direction

**tBodyAcc.std.X**

standard deviation of body acceleration in the X direction

**tBodyAcc.std.Y**

standard deviation of body acceleration in the Y direction

**tBodyAcc.std.Z**

standard deviation of body acceleration in the Z direction

**tGravityAcc.mean.X**

mean of body acceleration plus the effect of gravity in the X direction

**tGravityAcc.mean.Y**

mean of body acceleration plus the effect of gravity in the Y direction

**tGravityAcc.mean.Z**

mean of body acceleration plus the effect of gravity in the Z direction

**tGravityAcc.std.X**

standard deviation of body acceleration plus the effect of gravity in the X direction

**tGravityAcc.std.Y**

standard deviation of body acceleration plus the effect of gravity in the Y direction

**tGravityAcc.std.Z**

standard deviation of body acceleration plus the effect of gravity in the Z direction

**tBodyAccJerk.mean.X**

mean of body jerk signal acceleration in the X direction

**tBodyAccJerk.mean.Y**

mean of body jerk signal acceleration in the Y direction

**tBodyAccJerk.mean.Z**

mean of body jerk signal acceleration in the Z direction

**tBodyAccJerk.std.X**

standard deviation of body jerk signal acceleration in the X direction

**tBodyAccJerk.std.Y**

standard deviation of body jerk signal acceleration in the Y direction


**tBodyAccJerk.std.Z**

standard deviation of body jerk signal acceleration in the Z direction

**tBodyGyro.mean.X**

mean of body angular velocity in the X direction

**tBodyGyro.mean.Y**

mean of body angular velocity in the Y direction

**tBodyGyro.mean.Z**

mean of body angular velocity in the Z direction

**tBodyGyro.std.X**

standard deviation of body angular velocity in the X direction

**tBodyGyro.std.Y**

standard deviation of body angular velocity in the Y direction

**tBodyGyro.std.Z**

standard deviation of body angular velocity in the Z direction

**tBodyGyroJerk.mean.X**

mean of body jerk signal angular velocity in the X direction

**tBodyGyroJerk.mean.Y**

mean of body jerk signal angular velocity in the Y direction

**tBodyGyroJerk.mean.Z**

mean of body jerk signal angular velocity in the Z direction

**tBodyGyroJerk.std.X**

standard deviation of body jerk signal angular velocity in the X direction

**tBodyGyroJerk.std.Y**

standard deviation of body jerk signal angular velocity in the Y direction

**tBodyGyroJerk.std.Z**

standard deviation of body jerk signal angular velocity in the Z direction

**tBodyAccMag.mean**

mean of of body acceleration 3D magnitude (euclidean norm)

**tBodyAccMag.std**

standard deviation of body acceleration 3D magnitude (euclidean norm)

**tGravityAccMag.mean**

mean of body acceleration plus the effect of gravity 3D magnitude (euclidean norm)

**tGravityAccMag.std**

standard deviation of body acceleration plus the effect of gravity 3D magnitude (euclidean norm)

**tBodyAccJerkMag.mean**

mean of body acceleration jerk signal 3D magnitude (euclidean norm)

**tBodyAccJerkMag.std**

standard deviation of body acceleration jerk signal 3D magnitude (euclidean norm)

**tBodyGyroMag.mean**

mean of body angular velocity 3D magnitude (euclidean norm)

**tBodyGyroMag.std**

standard deviation of body angular velocity 3D magnitude (euclidean norm)

**tBodyGyroJerkMag.mean**

mean of body jerk signal angular velocity 3D magnitude (euclidean norm)

**tBodyGyroJerkMag.std**

standard deviation of body jerk signal angular velocity 3D magnitude (euclidean norm)

**fBodyAcc.mean.X**

mean of body acceleration with FFT in the X direction

**fBodyAcc.mean.Y**

mean of body acceleration with FFT in the Y direction

**fBodyAcc.mean.Z**

mean of body acceleration with FFT in the Z direction

**fBodyAcc.std.X**

standard deviation of body acceleration with FFT in the X direction

**fBodyAcc.std.Y**

standard deviation of body acceleration with FFT in the Y direction

**fBodyAcc.std.Z**

standard deviation of body acceleration with FFT in the Z direction

**fBodyAccJerk.mean.X**

mean of body acceleration with jerk signal and FFT in the X direction

**fBodyAccJerk.mean.Y**

mean of body acceleration with jerk signal and FFT in the Y direction

**fBodyAccJerk.mean.Z**

mean of body acceleration with jerk signal and FFT in the Z direction

**fBodyAccJerk.std.X**

standard deviation of body acceleration with jerk signal and FFT in the X direction

**fBodyAccJerk.std.Y**

standard deviation of body acceleration with jerk signal and FFT in the Y direction

**fBodyAccJerk.std.Z**

standard deviation of body acceleration with jerk signal and FFT in the Z direction

**fBodyGyro.mean.X**

mean of angular velocity with FFT in the X direction

**fBodyGyro.mean.Y**

mean of angular velocity with FFT in the Y direction

**fBodyGyro.mean.Z**

mean of angular velocity with FFT in the Z direction

**fBodyGyro.std.X**

standard deviation of angular velocity with FFT in the X direction

**fBodyGyro.std.Y**

standard deviation of angular velocity with FFT in the Y direction

**fBodyGyro.std.Z**

standard deviation of angular velocity with FFT in the Z direction

**fBodyAccMag.mean**

mean of body acceleration 3D magnitude with FFT (euclidean norm)

**fBodyAccMag.std**

standard deviation of body acceleration 3D magnitude with FFT (euclidean norm)

**fBodyBodyAccJerkMag.mean**

mean of body acceleration 3D magnitude with jerk signal and FFT (euclidean norm)

**fBodyBodyAccJerkMag.std**

standard deviation of body acceleration 3D magnitude with FFT (euclidean norm)

**fBodyBodyGyroMag.mean**

mean of body angular velocity 3D magnitude with FFT (euclidean norm)

**fBodyBodyGyroMag.std**

standard deviation of body angular velocity 3D magnitude with FFT (euclidean norm)

**fBodyBodyGyroJerkMag.mean**

mean of body angular velocity 3D magnitude with jerk signal and FFT (euclidean norm)

**fBodyBodyGyroJerkMag.std**

standard deviation of body angular velocity 3D magnitude with jerk signal and FFT (euclidean norm)


