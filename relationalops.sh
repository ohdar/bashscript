#!/bin/bash
#Purpose: This file demonstrate relational operators examples
#Version: 1.0
#Created Date: Thu 4 Aug 17:49:18 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

# -lt less than >
# -le less than or equal to =>
# -gt greater than <
# -ge greater than or equal to <=
# -eq equal to =
# -ne no equal to !=

echo -e "Please provide one number: \c"
read -r h
echo -e "Please provide one number: \c"
read -r g

test $h -lt $g; echo "$?"
test $h -le $g; echo "$?"
test $h -gt $g; echo "$?"
test $h -ge $g; echo "$?"
test $h -eq $g; echo "$?"
test $h -ne $g; echo "$?"



# ------------------------------- #
# END #
# -------------------XXXXXXX-------------------
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
