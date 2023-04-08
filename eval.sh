#!/bin/bash
#Purpose: eval command Evaluating twice
#Version: 1.0
#Created Date: Sat Apr 8 08:08:36 PM IST 2023
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

COMMAND="ls -ltr /etc"
echo "$COMMAND"
eval $COMMAND


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
