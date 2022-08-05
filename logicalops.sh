#!/bin/bash
#Purpose: This file demonstrate logical operators/Boolean Operators.
#Version: 1.0
#Created Date: Fri 5 Aug 21:30:13 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
# Used to Write Multiple conditions, Validate multiple conditions and execute the statement

# - AND ----- (-a) && ------ [First condition is TRUE AND Second Statement is TRUE THEN Execute Third Statement]
#            T - T - T
#            T - F - F
#            F - T - F
#            F - F - F
# - OR -----     (-O) || ------ [Either of First condition OR Second Statement is TRUE THEN Execute Third Statement]
#            T - F - T
#            F - T - T
#            T - T - T
#            F - F - T
# - NOT ------ (-n) !) ------ [If condition(NOT TRUE) is TRUE THEN Execute First Statement AND If condition(NOT TRUE) is FALSE THEN Execute Second Statement]
#            T - F
#            F - T

echo -e "Enter your Maths Subject Marks: \c"
read -r m
echo -e "Enter your Physcics Subject Marks: \c"
read -r p
echo -e "Enter your Chemistry Subject Marks: \c"
read -r c

if test $m -ge 35 -a $p -ge 35 -a $c -ge 35 
then
echo "Congratulations, You have passed in all subjects"
else
echo "Sorry You not upto mark in one of the subect"
fi

# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
