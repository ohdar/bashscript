#!/bin/bash
#Purpose: To demonstrate if statement
#Version: 1.0
#Created Date: Fri 5 Aug 22:33:14 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

echo -e "Please provide Value below ten: \c"
read -r value

if [ $value -le 10 ]; then
    echo "You provided value is $value"
else
    touch /tmp/test{1..100}.txt
    echo "Script completed sucessfully"
fi


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
