#!/bin/bash
#Purpose:
#Version: 
#Created Date: Thu 4 Aug 17:26:36 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

echo -e "Please Enter some value: \c"
read -r a
echo -e "Please enter another value: \c"
read -r b

echo "addition values `expr $a + $b `"
echo "minus values `expr $a - $b `"
echo "Multiplied values `expr $a \* $b `"
echo "devided values `expr $a / $b `"
echo "remainder values `expr $a % $b `"

echo "Completed Successfuly"


# ------------------------------- #

# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x arithmatics1.sh
# ./arithmatics1.sh

# END #
