#!/bin/bash
#Purpose: To Demonstrate case statement
#Version: 1.0
#Created Date: Sat 6 Aug 23:29:03 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
#--------Syntex----------------
# case value in
# 1)
#    statement
#    ;;
# 2)
#    statement
#    ;;
# 3)
#    statement
#    ;;
# 4)
#    statement
#    ;;

# *)
#    statement    
# esac

echo -e "Enter a number: \c"
read -r a

echo -e "Enter b number: \c"
read -r b

echo "1. Sum of values"
echo "2. Substraction of values"
echo "3. Multiplication of values"
echo "4. Division of values"
echo "5. Sum of values"

echo -e "Enter Your Choise form above menu: \c"
read -r ch

case $ch in
    1) echo "Sum of $a + $b = "`expr $a + $b`"" ;;
    2) echo "Sum of $a - $b = "`expr $a - $b`"" ;;
    3) echo "Sum of $a x $b = "`expr $a \* $b`"" ;;
    4) echo "Sum of $a / $b = "`expr $a / $b`"" ;;
    5) echo "Sum of $a % $b = "`expr $a % $b`"" ;;
    *) echo "Invalid Option Provided"
esac
# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
