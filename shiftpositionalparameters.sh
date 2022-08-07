#!/bin/bash
#Purpose: To demonstrate the shifting positional parameters automatically
#Version: 1.0
#Created Date: Sun 7 Aug 14:49:49 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

set `date`

echo "Count $#"

echo "$1 $2 $3 $4 $5"

shift

echo "$1 $2 $3 $4 $5"

shift 2

echo "$1 $2 $3 $4 $5"

shift 3

echo "$1 $2 $3 $4 $5"

#shift is shifting values from right to left as given by shift value

# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
