#!/bin/bash
#Purpose: To demonstrate continue statement
#Version: 
#Created Date: Sat 6 Aug 23:46:54 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
#----syntex-------
# while something
# do
#      condition
#        cmd1
#        cmd2
# do want to continue
# done

opt=y
while [ $opt = y -o $opt = Y ]
do
    echo -e "Please enter the number: \c"
    read -r num
    if [ $num -le 50 ]; then
        sq=`expr $num \* $num`
        echo "Square of provided number $num: $sq"
    else
        echo "Number not in the given Range"
    fi
echo -e "Do you want to continue [y/n]: \c"
read -r wish
    if [ $wish = y -o $wish = Y ]; then
        continue
    else
        echo "Thanks for Exiting.."
        exit
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
