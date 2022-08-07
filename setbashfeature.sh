#!/bin/bash
#Purpose: To Demonstrate the set assigns its arguments to the positional prarmeters
#Version: 1.0
#Created Date: Sun 7 Aug 14:39:36 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

set `date` # set is given date value
echo "Today is $1"
echo "Month is $2"
echo "Date is $3"
echo "Time H:M:S $4"
echo "TimeZone is : $5"
echo "Year is $6"

set -x # set is removed date value and x is assigned


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
