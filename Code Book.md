Code Book 

The tidy data has 88 Variables according to instruction of the assignment, where extracting only the measurements on the mean and standard deviation for each measurement was requested.

There variables are:

Activity:
         1 WALKING
         2 WALKING_UPSTAIRS
         3 WALKING_DOWNSTAIRS
         4 SITTING
         5 STANDING
         6 LAYING
Subject:
  Refers to the number assigned to the tested subject.

t: Time

F: Fast Fourier Transform was applied to some of the signals in time, producing variables in frequency

tBodyAcc-XYZ:
  the body linear acceleration denoted in 3-axil signals X,Y and Z
tGravityAcc-XYZ:
  Gravity acceleration in 3-axial signals
tBodyAccJerk-XYZ:
  the body linear acceleration and angular velocity derived in time to obtain Jerk signals 
tBodyGyro-XYZ:
  the body gyroscope signal denoted in 3-axil signals X,Y and Z
tBodyGyroJerk-XYZ:
  the body gyroscope signal derived in time to obtain Jerk signals 
tBodyAccMag:
  The magnitude of the body acceleration signal, calculated using the Euclidean norm 
tGravityAccMag:
  The magnitude of the gravity acceleration signal, calculated using the Euclidean norm 
tBodyAccJerkMag:
  The magnitude of the body acceleration jerk signal, calculated using the Euclidean norm 
tBodyGyroMag:
  The magnitude of the body gyroscope signal, calculated using the Euclidean norm 
tBodyGyroJerkMag:
  The magnitude of the body gyroscope jerk signal, calculated using the Euclidean norm 
fBodyAcc-XYZ
  FFT applied to body acceleration signal in 3-axil signals X,Y,Z
fBodyAccJerk-XYZ
  FFT applied to body acceleration jerk signal in 3-axil signals X,Y,Z
fBodyGyro-XYZ
  FFT applied to bpdy gyroscope signal in 3-axil signals X,Y,Z
fBodyAccMag
  FFT applied to magnitude of the body acceleration signal
fBodyAccJerkMag
  FFT applied to magnitude of the body acceleration jerk signal
fBodyGyroMag
  FFT applied to magnitude of the body gyroscope signal
fBodyGyroJerkMag
  FFT applied to magnitude of the body gyroscope jerk signal


The set of variables that were estimated from these signals are: 
  mean(): Mean value
  std(): Standard deviation

Transformations 
 Subject and Activity has been turn into factors
 The variable Activity has been changed from numbers to a descriptive name
