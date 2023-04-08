#!/bin/bash
#Purpose: Troubleshooting shell script
#Version: 1.0 
#Created Date: Sat Apr 8 06:52:19 PM IST 2023
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

#copied code from msword

##!/bin/bash
# COUNT=`Cat test | wc -l`
# If[ $COUNT -ge 1]; then
# Echo “File has some content it it”
# fi

# corrected code below
# take help from website https://www.shellcheck.net/

COUNT=$( cat test | wc -l )
if [ "$COUNT" -ge 1 ] ; then
    echo "File has some content it"
fi


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
# To remove errors of copied script from webpage install below package then used it as below
# sudo apt install dos2unix
# dos2unix debug.sh
