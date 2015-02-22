---
title: "README.md"
output: html_document
---

  Unfortunately I only got part way through the course project
  Code is therefore only partially complete

  Ran out of time, partly because I spent spent ages
  trying to get fread() to work with the X_test.txt file 
  (because this is the preferred mthod for reading in data.tables as it's faster etc
  eventually discovered there's known bug which prevents this from working
  when processing files with multiple spaces

  See https://class.coursera.org/getdata-011/forum/thread?thread_id=76


Got this far with the code

(1) Read in 

  *  /UCI HAR Dataset/features.txt
  *  /UCI HAR Dataset/train/X_train.txt
  *  /UCI HAR Dataset/test/X_test.txt

  *  /UCI HAR Dataset/activity_labels.txt

  *  /UCI HAR Dataset/test/y_test.txt
  *  /UCI HAR Dataset/train/y_train.txt

  *  /UCI HAR Dataset/test/subject_test.txt"))
  *  /UCI HAR Dataset/train/subject_train.txt"))

as data frames and converted to data.tables

(2) Merged X_train.txt and X_test.txt

(3) Converted features.txt to column headings for merged dataset from 2 above

(4) Merged y_test.txt and y_train.txt

(5) Combined merged dataset from 4 above with merged dataset from 2 above 

(6) Sorted master merged dataset from 5 above by Activity column

- Ran out of time at that point so had to submit so no tidy datasest!

- No code book prepared either because code is incomplete
