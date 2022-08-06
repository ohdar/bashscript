#!/bin/bash
#Purpose: To demonstrate if-else-if-statement
#Version: 1.0
#Created Date: Sat 6 Aug 18:40:37 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
#-------SYNTEX------------
# if [ condition ]
# then
#     statement
# elif [ condition ]
# then
#     statement
# elif [ condition ]
# then
#     statement
# else
#     statement
# fi
#----------------OR SYNTEX -------------
# if [ condition ]; then
#     statement
# elif [ condition ]; then
#     statement
# elif [ condition ]; then
#     statement
# else
#     statement
# fi

echo -e "Please Enter a Value: \c"
read -r a
echo -e "Please Enter b Value: \c"
read -r b
echo -e "Please Enter c Value: \c"
read -r c
echo -e "Please Enter d Value: \c"
read -r d

if [ $a -gt $b -a $a -gt $c -a $a -gt $d ]; then
    echo "$a a is big"
elif [ $b -gt $c -a $b -gt $d ]; then
    echo "$b b is big"
elif [ $c -gt $d ]; then
    echo "$c c is big"
else
    echo "$d d is big"
fi




# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
