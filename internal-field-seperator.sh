#!/bin/bash
#Purpose: Internal field seperator example
#Version: 1.0
#Created Date: Sat Apr 8 07:47:23 PM IST 2023
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

LINE=`cat /etc/passwd | grep $1`
IFS=:
set $LINE
echo "User Name = $1"
echo "Password = $2"
echo "UID = $3"
echo "GID = $4"
echo "Description = $5"
echo "Home Directory = $6"
echo "Current Shell = $7"
# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
