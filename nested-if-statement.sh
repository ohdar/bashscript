#!/bin/bash
#Purpose: To demonstrate nested if statement
#Version: 
#Created Date: Sat 6 Aug 18:59:35 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
#-------------SYNTEX ----------
# if [ condition-1 ]; then
#     statement
#     if [ codition-2 ]; then
#         statement
#     else
#         statement
#     fi
# else
#     statement
# fi

echo -e "Please Enter Maths Marks: \c"
read -r m
echo -e "Please Enter Physics Marks: \c"
read -r p
echo -e "Please Enter Chemistry Marks: \c"
read -r c

if [ $m -ge 35 -a $p -ge 35 -a $c -ge 35 ]; then
    total=`expr $m + $p + $c`
    avg=`expr $total / 3`
    echo "Total Marks = $total"
    echo "Average Marks = $avg"
    if [ $avg -ge 75 ]; then
        echo "Congrats you got Distinction"
    elif [ $avg -ge 60 -a $avg -lt 75 ]; then
        echo "Congrats you got First Class"
    elif [ $avg -ge 50 -a $avg -lt 60 ]; then
        echo "You got second class"
    elif [ $avg -ge 35 -a $avg -lt 50 ]; then
        echo "You got third class"
    fi
else
    echo "Sorry You Failed"
fi


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
