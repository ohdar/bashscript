#!/bin/bash
#Purpose: This program introduces arithmatic operation in bash script
#Version: 1.0
#Created Date: Thu 4 Aug 17:19:17 IST 2022
#Modified Date: 
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
echo -e "Please Enter some value: \c"
read -r a
echo -e "Please enter another value: \c"
read -r b

echo "a+b value is $(($a+$b))"
echo "a-b value is $(($a-$b))"
echo "axb value is $(($a*$b))"
echo "a/b value is $(($a/$b))"
echo "a%b value is $(($a%$b))"

echo "Program completed sucessfully"

# ------------------------------- #

# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x arithmatics.sh
# ./arithmatics.sh

# END #
