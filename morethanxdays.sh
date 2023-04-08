#!/bin/bash
#Purpose: Delete the Directories older than 2 days based on directory name validation
#Version: 1.0
#Created Date: Sat Apr 8 11:16:08 PM IST 2023
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

ls -ltr /home/brajesh/Desktop/bashscript/fullbackup/archive/ | awk '{print $9}' > /home/brajesh/Desktop/bashscript/dirs
for i in `cat /home/brajesh/Desktop/bashscript/dirs`; do
    STARTTIME=$(date +%s -d"$i 00:00:00")
    ENDTIME=$(date +%s)
    echo $((ENDTIME-STARTTIME)) | awk '{print int($1/60)}' > /home/brajesh/Desktop/bashscript/value
    COUNT=`cat /home/brajesh/Desktop/bashscript/value`
    if [ $COUNT -gt 2880 ]; then 
        echo "Directories are older than 2days $i" > /home/brajesh/Desktop/bashscript/joblog
        rm -rf /home/brajesh/Desktop/bashscript/fullbackup/archive/$i
    fi
done

# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
