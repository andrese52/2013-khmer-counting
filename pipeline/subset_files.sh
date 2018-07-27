#!/bin/bash

if [ -d "originFiles" ]; then
  echo "Good, all the original large files will be in the originalFiles/ folder"
else
  mkdir originFiles
fi



# check if the files already in the folder, I don't want to overwrite the original files
if [ -f "originFiles/iowa_prairie_0920.fa.1" ]; then
  echo "Good, you have the iowa files in the backup :)"
else
  echo "moving files to originFiles/ first maybe?"
  mv  iowa_prairie_0920.fa.* originFiles/
fi

if [ -f "originFiles/MH0001.trimmed.fa" ]; then
  echo "Good, you have MH0001.trimmed.fa file in the backup :)"
else
  echo "moving files to originFiles/ first maybe?"
  mv MH0001.trimmed.fa originFiles/  
fi

if [ -f "originFiles/ecoli_ref.fastq" ]; then
  echo "Good, you have ecoli_ref.fastq file in the backup :)"
else
  echo "moving files to originFiles/ first maybe?"
   mv ecoli_ref.fastq originFiles/
fi


# create the subset
head -n 194 originFiles/iowa_prairie_0920.fa.1 > ./iowa_prairie_0920.fa.1
head -n 388 originFiles/iowa_prairie_0920.fa.2 > ./iowa_prairie_0920.fa.2
head -n 584 originFiles/iowa_prairie_0920.fa.3 > ./iowa_prairie_0920.fa.3
head -n 778 originFiles/iowa_prairie_0920.fa.4 > ./iowa_prairie_0920.fa.4
head -n 974 originFiles/iowa_prairie_0920.fa.5 > ./iowa_prairie_0920.fa.5
head -n 848 originFiles/MH0001.trimmed.fa > ./MH0001.trimmed.fa
head -n 2001 originFiles/ecoli_ref.fastq > ./ecoli_ref.fastq

# note, original file size
# 1. 19488798
# 2. 38977596
# 3. 58466394
# 4. 77955192
# 5. 97443990
# MH0001.trimmed.fa 84916804
# ecoli_ref.fastq   20000000