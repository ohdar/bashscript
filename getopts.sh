#!/bin/bash
#Purpose: Getopts Examples working with arguments
#Version: 1.0
#Created Date: Sat Apr 8 01:19:12 PM IST 2023
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

while getopts a:b: options; do 
    case $options in 
            a) ap=$OPTARG;;
            b) bo=$OPTARG;;
            ?) echo "I Dont know What is $OPTARG"
    esac

done

echo "Option A= $ap and Option B = $bo"


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
