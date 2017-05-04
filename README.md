Run Analysis script description
================================

The script uses the raw data collected from the accelerometers from the Samsung Galaxy S smartphone for performing wearable computing. <br />

The script upload the train and test set separately including the information of the activities and the subjects. The names of the variables has been changed with descriptives onces using the features.txt file available in the donwload folder.<br /><br />

Once the training and testing sets are ready, they have been merged, using the rbind function instead of the merge function, as in this case a row merge is required. <br />

According to the instructions of the assignment the measurements that include the mean and std has been extracted, performing a search within the names of the variables that include the words "mean" and "std". Additionally, the data of the activity and suject has been turned it into factors. <br /><br />

Once have extracted the variables required the names of the activities had to be changed to descriptive names. This was performed using the function FindReplace from the DataCombine package. <br /><br />

Finally, a new independent data set has been created, which shows the mean of each varible from each activity and each subject. In order to get this new data set, the old tidy data set had to be melt it first, for being dcast afterwards.<br />
