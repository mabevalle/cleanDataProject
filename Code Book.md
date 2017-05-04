**Code Book**
===========
The tidy data has 88 Variables according to instruction of the assignment, where extracting only the measurements on the mean and standard deviation for each measurement was requested.

*VARIABLES*
----------------
Activity <br /> <br />
         1. WALKING <br />
         2. WALKING_UPSTAIRS <br />
         3. WALKING_DOWNSTAIRS<br />
         4. SITTING <br />
         5. STANDING <br />
         6. LAYING <br />
         <br />
Subject: <br />
  Refers to the number assigned to the tested subject. <br />

t: Time <br />

F: Fast Fourier Transform was applied to some of the signals in time, producing variables in frequency <br />
<br />
tBodyAcc-XYZ: <br />
  the body linear acceleration denoted in 3-axil signals X,Y and Z <br /><br />
tGravityAcc-XYZ:<br />
  Gravity acceleration in 3-axial signals <br /><br />
tBodyAccJerk-XYZ:<br />
  the body linear acceleration and angular velocity derived in time to obtain Jerk signals <br /><br />
tBodyGyro-XYZ:<br />
  the body gyroscope signal denoted in 3-axil signals X,Y and Z<br /><br />
tBodyGyroJerk-XYZ:<br />
  the body gyroscope signal derived in time to obtain Jerk signals <br /><br />
tBodyAccMag:<br />
  The magnitude of the body acceleration signal, calculated using the Euclidean norm <br /><br />
tGravityAccMag:<br />
  The magnitude of the gravity acceleration signal, calculated using the Euclidean norm <br /><br />
tBodyAccJerkMag:<br />
  The magnitude of the body acceleration jerk signal, calculated using the Euclidean norm <br /><br />
tBodyGyroMag:<br />
  The magnitude of the body gyroscope signal, calculated using the Euclidean norm <br /><br />
tBodyGyroJerkMag:<br />
  The magnitude of the body gyroscope jerk signal, calculated using the Euclidean norm <br /><br />
fBodyAcc-XYZ<br />
  FFT applied to body acceleration signal in 3-axil signals X,Y,Z<br /><br />
fBodyAccJerk-XYZ<br />
  FFT applied to body acceleration jerk signal in 3-axil signals X,Y,Z<br /><br />
fBodyGyro-XYZ<br />
  FFT applied to bpdy gyroscope signal in 3-axil signals X,Y,Z<br /><br />
fBodyAccMag<br />
  FFT applied to magnitude of the body acceleration signal<br /><br />
fBodyAccJerkMag<br />
  FFT applied to magnitude of the body acceleration jerk signal<br /><br />
fBodyGyroMag<br />
  FFT applied to magnitude of the body gyroscope signal<br /><br />
fBodyGyroJerkMag<br />
  FFT applied to magnitude of the body gyroscope jerk signal<br />

<br />
The set of variables that were estimated from these signals are: <br /><br />
  <br />mean(): Mean value<br />
 <br /> std(): Standard deviation<br />
<br /><br />
**Transformations** <br />
 Subject and Activity has been turn into factors<br />
 The variable Activity has been changed from numbers to a descriptive name<br />
