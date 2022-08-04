#!/bin/bash
#Purpose: This file is demonstrating if else statement and if else nesting
#Version: 1.0
#Created Date: Thu 4 Aug 01:29:43 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

#!/bin/bash

echo "You Died"

## echo "Hey, do you like coffee? (y/n)"

#read coffee

#if [[ $coffee == "y" ]]; then
##      echo "You are awesome"
#else
##      echo "Leave righ now!!!"
#fi

#First beast battle

beast=$(( $RANDOM % 2 ))

echo "Your first beast approaches, Prepare to battle. Pick a number between  0-1. (0/1)"
read tarnished

if [[ $beast == $tarnished && 47 > 23 ]]; then
        echo "Beast VANQUISED!! Congrats Fellow Tarnished"
else
        echo "You Died"
fi

sleep 2

echo "Boss battle, Get scared. Its Margit. Pick a number between 0-9. (0-9)"

read tarnished

beast=$(( $RANDOM % 10))

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
        echo "Beast Vanquised"
elif [[ $USER == "brajesh" ]]; then
                echo "Beast vanquished"

else
        echo "You Died"
fi


# ------------------------------- #
# END #
