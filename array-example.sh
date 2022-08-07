#!/bin/bash
#Purpose: To demonstrate the array in shell script
#Version: 1.0
#Created Date: Sun 7 Aug 19:07:00 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

Month=(0 1 2 3 4 5)
echo ${Month[2]}
echo ${Month[@]}
echo ${#Month[@]}

fruits=("Apple" "Orange" "Banana" "Sapota" )
fruits[3]='Green-Apple'
for fruit in ${fruits[@]}
do
    echo "Fruite Name is $fruit"
done
echo "Number of Fruits in Buckets is" ${#fruits[@]}
echo "All Fruits in Buckets is ${fruits[@]}"

# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
