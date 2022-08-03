#!bin/bash
#Purpose:
#Version: 
#Created Date: Thu 4 Aug 00:35:53 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
echo "What is your name?"

read name

if [ $name ]; then
    echo "$name souds alright to me"
else
    echo "Doesn't sound like anything to me"
fi
# ------------------------------- #
# END #
