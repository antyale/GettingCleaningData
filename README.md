# Description of run_analysis.R
The script downloads, unzip and creates a clean dataset from the Human Activity Recognition database. Then, the clean dataset is stored in a file named "clean_data.txt".
The steps followed to create the clean dataset are:
- Extracts only the measurements on the mean and standard deviation for each measurement
- Add the descriptive activity names to the measurement datasets
- Add the subject to the measurement datasets
- Merge the training and the test datasets
- Calculates average of each variable for each activity and each subject 

You can find more information about the clean dataset in the CodeBook.md file.

# Requirements
- The script requires the package plyr
- The script requires internet connection to download the dataset file. If dataset.zip file is already in the folder then it does not need to download it again.

# Author
Antonio Romero