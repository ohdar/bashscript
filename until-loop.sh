#!/bin/bash
#Purpose: To demonstrate until loop to check list the hosts which are down
#Version: 
#Created Date: Sun 7 Aug 15:35:14 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
#------- Syntex -------------
#   until [ expression ] here expression boolean vaue is false then execute statment
#   do
#       statement
#       statement
        ######
#   done

echo -e "Please Enter the IP Address to Ping: \c"
read -r ip

until ping -c 3 $ip
do
    echo "Host is Still Down"
    sleep 1
done

echo "Host $ip is Up Now"


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
