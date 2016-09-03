Code Book
=====
**Human Activity Recognition Using Smartphones Dataset**

Each record provides:
======================================
- Mean or standard deviation of Triaxial acceleration from the accelerometer (total acceleration) 
	and the estimated body acceleration.
- Mean or standard deviation of Triaxial Angular velocity from the gyroscope. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Experimental Study Design
======================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we 
captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments 
have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into 
two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled 
in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, 
which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore 
a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating 
variables from the time and frequency domain.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw 
signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were 
captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd 
order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, 
the acceleration signal was then separated into body and gravity acceleration signals 
tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain 
Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional 
signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to 
indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

**This data consists of the means and standard deviations of the experimental data.**
Feature Descriptions
======================================
The following lists the features included in the file produced, a description of each and measurement units

1. activity --- One of six activities performed 
2. subjectID --- ID of the subject who performed the activity 
3. time-bodyacceleration-mean-X --- Mean body acceleration time - X direction --- standard gravity units, 'g'
4. time-bodyacceleration-mean-Y --- Mean body acceleration time - Y direction --- standard gravity units, 'g'
5. time-bodyacceleration-mean-Z --- Mean body acceleration time - Z direction --- standard gravity units, 'g'
6. time-bodyacceleration-stdev-X --- Stdev of time of body acceleration - X direction --- standard gravity units, 'g'
7. time-bodyacceleration-stdev-Y --- Stdev of time of body acceleration - Y direction --- standard gravity units, 'g'
8. time-bodyacceleration-stdev-Z --- Stdev of time of body acceleration - Z direction --- standard gravity units, 'g'
9. time-gravityacceleration-mean-X --- Mean gravity acceleration time - X direction --- standard gravity units, 'g'
10. time-gravityacceleration-mean-Y --- Mean gravity acceleration time - Y direction --- standard gravity units, 'g'
11. time-gravityacceleration-mean-Z --- Mean gravity acceleration time - Z direction --- standard gravity units, 'g'
12. time-gravityacceleration-stdev-X --- Stdev of time of gravity accelerationleration - X direction --- standard gravity units, 'g'
13. time-gravityacceleration-stdev-Y --- Stdev of time of gravity accelerationleration - Y direction --- standard gravity units, 'g'
14. time-gravityacceleration-stdev-Z --- Stdev of time of gravity accelerationleration - Z direction --- standard gravity units, 'g'
15. time-bodyaccelerationJerk-mean-X --- Mean body acceleration jerk time - X direction --- standard gravity units, 'g'
16. time-bodyaccelerationJerk-mean-Y --- Mean body acceleration jerk time - Y direction --- standard gravity units, 'g'
17. time-bodyaccelerationJerk-mean-Z --- Mean body acceleration jerk time - Z direction --- standard gravity units, 'g'
18. time-bodyaccelerationJerk-stdev-X --- Stdev of time of body acceleration jerk - X direction --- standard gravity units, 'g'
19. time-bodyaccelerationJerk-stdev-Y --- Stdev of time of body acceleration jerk - Y direction --- standard gravity units, 'g'
20. time-bodyaccelerationJerk-stdev-Z --- Stdev of time of body acceleration jerk - Z direction --- standard gravity units, 'g'
21. time-bodyangularvelocity-mean-X --- Mean body gyroscope measurement - X direction --- radians/second
22. time-bodyangularvelocity-mean-Y --- Mean body gyroscope measurement - Y direction --- radians/second
23. time-bodyangularvelocity-mean-Z --- Mean body gyroscope measurement - Z direction --- radians/second
24. time-bodyangularvelocity-stdev-X --- Stdev of body gyroscope measurement - X direction --- radians/second
25. time-bodyangularvelocity-stdev-Y --- Stdev of body gyroscope measurement - Y direction --- radians/second
26. time-bodyangularvelocity-stdev-Z --- Stdev of body gyroscope measurement - Z direction --- radians/second
27. time-bodyangularvelocity-mean-X --- Mean jerk signal of body - X direction --- standard gravity units, 'g'
28. time-bodyangularvelocity-mean-Y --- Mean jerk signal of body - Y direction --- standard gravity units, 'g'
29. time-bodyangularvelocity-mean-Z --- Mean jerk signal of body - Z direction --- standard gravity units, 'g'
30. time-bodyangularvelocity-stdev-X --- Stdev of jerk signal of body - X direction --- standard gravity units, 'g'
31. time-bodyangularvelocity-stdev-Y --- Stdev of jerk signal of body - Y direction --- standard gravity units, 'g'
32. time-bodyangularvelocity-stdev-Z --- Stdev of jerk signal of body - Z direction --- standard gravity units, 'g'
33. time-bodyaccelerationmagnitude-mean --- Mean magnitude of body acceleration --- Euclidean norm
34. time-bodyaccelerationmagnitude-stdev --- Stdev of body acceleration magnitude --- Euclidean norm
35. time-gravityaccelerationmagnitude-mean --- Mean gravity acceleration magnitude --- Euclidean norm
36. time-gravityaccelerationmagnitude-stdev --- Stdev of gravity acceleration magnitude --- Euclidean norm
37. time-bodyaccelerationJerkmagnitude-mean --- Mean magnitude of body acceleration jerk --- standard gravity units, 'g'
38. time-bodyaccelerationJerkmagnitude-stdev --- Stdev of magnitude of body acceleration jerk --- standard gravity units, 'g'
39. time-bodyangularvelocitymagnitude-mean --- Mean magnitude of body gyroscope measurement --- radians/second
40. time-bodyangularvelocitymagnitude-stdev --- Stdev of magnitude of body gyroscope measurement --- radians/second
41. time-bodyangularvelocitymagnitude-mean --- Mean magnitude of body gyroscope jerk measurement --- radians/second
42. time-bodyangularvelocitymagnitude-stdev --- Stdev of magnitude of body gyroscope jerk measurement --- radians/second
43. freq-bodyacceleration-mean-X --- Mean frequency of body acceleration - X direction --- FFT of standard gravity units
44. freq-bodyacceleration-mean-Y --- Mean frequency of body acceleration - Y direction --- FFT of standard gravity units
45. freq-bodyacceleration-mean-Z --- Mean frequency of body acceleration - Z direction --- FFT of standard gravity units
46. freq-bodyacceleration-stdev-X --- Stdev of frequency of body acceleration - X direction --- FFT of standard gravity units
47. freq-bodyacceleration-stdev-Y --- Stdev of frequency of body acceleration - Y direction --- FFT of standard gravity units
48. freq-bodyacceleration-stdev-Z --- Stdev of frequency of body acceleration - Z direction --- FFT of standard gravity units
49. freq-bodyaccelerationJerk-mean-X --- Mean frequency of body acceleration jerk - X direction --- FFT of standard gravity units
50. freq-bodyaccelerationJerk-mean-Y --- Mean frequency of body acceleration jerk - Y direction --- FFT of standard gravity units
51. freq-bodyaccelerationJerk-mean-Z --- Mean frequency of body acceleration jerk - Z direction --- FFT of standard gravity units
52. freq-bodyaccelerationJerk-stdev-X --- Stdev of frequency of body acceleration jerk - X direction --- FFT of standard gravity units
53. freq-bodyaccelerationJerk-stdev-Y --- Stdev of frequency of body acceleration jerk - Y direction --- FFT of standard gravity units
54. freq-bodyaccelerationJerk-stdev-Z --- Stdev of frequency of body acceleration jerk - Z direction --- FFT of standard gravity units
55. freq-bodyangularvelocity-mean-X --- Mean frequency of body gyroscope measurement - X direction --- FFT of standard gravity units
56. freq-bodyangularvelocity-mean-Y --- Mean frequency of body gyroscope measurement - Y direction --- FFT of standard gravity units
57. freq-bodyangularvelocity-mean-Z --- Mean frequency of body gyroscope measurement - Z direction --- FFT of standard gravity units
58. freq-bodyangularvelocity-stdev-X --- Stdev of frequency of body gyroscope measurement - X direction --- FFT of standard gravity units
59. freq-bodyangularvelocity-stdev-Y --- Stdev of frequency of body gyroscope measurement - Y direction --- FFT of standard gravity units
60. freq-bodyangularvelocity-stdev-Z --- Stdev of frequency of body gyroscope measurement - Z direction --- FFT of standard gravity units
61. freq-bodyaccelerationmagnitude-mean --- Mean frequency of body acceleration magnitude --- Euclidean norm
62. freq-bodyaccelerationmagnitude-stdev --- Stdev of frequency of body acceleration magnitude --- Euclidean norm
63. freq-bodybodyaccelerationJerkmagnitude-mean --- Mean frequency of body acceleration jerk magnitude --- Euclidean norm
64. freq-bodybodyaccelerationJerkmagnitude-stdev --- Stdev of frequency of body acceleration jerk magnitude --- Euclidean norm
65. freq-bodybodyangularvelocitymagnitude-mean --- Mean frequency of magnitude of body gyroscope measurement --- Euclidean norm
66. freq-bodybodyangularvelocitymagnitude-stdev --- Stdev of frequency of magnitude of body gyroscope measurement --- Euclidean norm
67. freq-bodybodyangularvelocitymagnitude-mean --- Mean frequency of magnitude of body gyroscope jerk measurement --- Euclidean norm
68. freq-bodybodyangularvelocitymagnitude-stdev --- Stdev  of frequency of magnitude of body gyroscope jerk measurement --- Euclidean norm



Notes: 
======
- Features are normalized and bounded within [-1,1].

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition 
on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted 
Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their 
institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


