#!/bin/bash
#Purpose: To demonstrate while loop
#Version: 1.0
#Created Date: Sat 6 Aug 19:20:22 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
#------- Syntex -------
# while [ condition ]
# do 
#     statement
#     statement
# done

echo -e "Please provide one value: \c"
read -r c
i=1
while [ $i -le 10 ]
do 
    b=`expr $c \* $i`
    echo "$c x $i = $b"
    i=`expr $i + 1`
done


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
