#!/bin/bash
#Purpose: OR Operator Example
#Version:1.0 
#Created Date: Fri 5 Aug 22:14:12 IST 2022
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

echo -e "Enter First Numeric Value: \c"
read -r t
echo -e "Enter Second Numeric Value: \c"
read -r b

if [ $t -le 20 -o $b -ge 30 ] ; then
    echo "Statement is True"
else
    echo "False, Statement Try Again"
fi



# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
