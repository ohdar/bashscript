#!/bin/bash
#Purpose: To demonstrate If-else-statement
#Version: 1.0
#Created Date: Sat 6 Aug 18:35:09 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

echo -e "Enter any value: \c"
read -r a
echo -e "Enter any value: \c"
read -r b

if [ $a -gt $b ]; then
    echo "$a is greater than $b"
else
    echo "$a is smaller than $b"
fi

# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
