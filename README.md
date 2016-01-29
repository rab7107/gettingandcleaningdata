# gettingandcleaningdata
Course Project for Coursera's Getting and Cleaning Data

# Overview
run_analysis.R reads in the Human Activity Recognition dataset from a folder called UCI HAR Dataset in the current working directory.  It combines the test and training data, converts the activity indices to names, renames the columns to be more human-readable, and returns an aggregated data set containing the mean values for each subject, activity pair.

# Data Set
The unedited data set is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).  Descriptions of values are derived from the original, full descriptions, available in features_info.txt in the data folder.

# Code Book
The returned data set contains the columns listed below.  Columns indicate whether the signal is in the time ('time') or frequency ('freq') domain.  'Mean' indicates an averaged value, while 'std' is the standard deviation.  Accelerometer data was separated into 'body' and 'gravity' acceleration signals.  'Jerk' indicates a jerk signal.  'Magnitude' indicates the magnitude of the named signal, calculated using the Euclidean norm.  'X', 'y', and 'z' indicate direction.

The original data had multiple measurements for each subject and each activity.  The aggregated data set averaged over these values, grouping by subject and activity.

- subject.id - the ID of the human subject.
- activity - the name of the measured activity.
- time.body.acceleration.mean.x
- time.body.acceleration.mean.y
- time.body.acceleration.mean.z
- time.body.acceleration.std.x
- time.body.acceleration.std.y
- time.body.acceleration.std.z
- time.gravity.acceleration.mean.x
- time.gravity.acceleration.mean.y
- time.gravity.acceleration.mean.z
- time.gravity.acceleration.std.x
- time.gravity.acceleration.std.y
- time.gravity.acceleration.std.z
- time.body.acceleration.jerk.mean.x
- time.body.acceleration.jerk.mean.y
- time.body.acceleration.jerk.mean.z
- time.body.acceleration.jerk.std.x
- time.body.acceleration.jerk.std.y
- time.body.acceleration.jerk.std.z
- time.body.gyro.mean.x
- time.body.gyro.mean.y
- time.body.gyro.mean.z
- time.body.gyro.std.x
- time.body.gyro.std.y
- time.body.gyro.std.z
- time.body.gyro.jerk.mean.x
- time.body.gyro.jerk.mean.y
- time.body.gyro.jerk.mean.z
- time.body.gyro.jerk.std.x
- time.body.gyro.jerk.std.y
- time.body.gyro.jerk.std.z
- time.body.acceleration.magnitude.mean
- time.body.acceleration.magnitude.std
- time.gravity.acceleration.magnitude.mean
- time.gravity.acceleration.magnitude.std
- time.body.acceleration.jerk.magnitude.mean
- time.body.acceleration.jerk.magnitude.std
- time.body.gyro.magnitude.mean
- time.body.gyro.magnitude.std
- time.body.gyro.jerk.magnitude.mean
- time.body.gyro.jerk.magnitude.std
- freq.body.acceleration.mean.x
- freq.body.acceleration.mean.y
- freq.body.acceleration.mean.z
- freq.body.acceleration.std.x
- freq.body.acceleration.std.y
- freq.body.acceleration.std.z
- freq.body.acceleration.jerk.mean.x
- freq.body.acceleration.jerk.mean.y
- freq.body.acceleration.jerk.mean.z
- freq.body.acceleration.jerk.std.x
- freq.body.acceleration.jerk.std.y
- freq.body.acceleration.jerk.std.z
- freq.body.gyro.mean.x
- freq.body.gyro.mean.y
- freq.body.gyro.mean.z
- freq.body.gyro.std.x
- freq.body.gyro.std.y
- freq.body.gyro.std.z
- freq.body.acceleration.magnitude.mean
- freq.body.acceleration.magnitude.std
- freq.body.body.acceleration.jerk.magnitude.mean
- freq.body.body.acceleration.jerk.magnitude.std
- freq.body.body.gyro.magnitude.mean
- freq.body.body.gyro.magnitude.std
- freq.body.body.gyro.jerk.magnitude.mean
- freq.body.body.gyro.jerk.magnitude.std