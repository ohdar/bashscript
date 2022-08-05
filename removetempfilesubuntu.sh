#!/bin/bash
#Purpose: This program contains command for removing tempory files from ubuntu
#Version: 1.0
#Created Date: Fri 5 Aug 23:37:27 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
#command for listing tempory files form /tmp folder in ubuntu
ls /tmp/
#command for listing hidden tempory files form /tmp folder in ubuntu
ls -al /tmp/
#remove tempory files form /tmp folder in ubuntu
sudo rm -Rf /tmp/*
#remove hidden tempory files form /tmp folder in ubuntu
sudo rm -Rf /tmp/'.*'
# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
