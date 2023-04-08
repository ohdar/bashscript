#!/bin/bash
#Purpose: Multiple script execution from single file
#Version: 1.0
#Created Date: Sat Apr 8 08:14:49 PM IST 2023
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

for servername in `cat /home/brajesh/Desktop/bashscript/serverlist`
do
    sudo ssh brajesh@$servername sh /home/brajesh/Desktop/bashscript/diskspace.sh

done


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
# code to install open-ssh server
# sudo apt-get install openssh-server
# sudo systemctl enable ssh
# sudo systemctl enable ssh --now
# sudo systemctl start ssh
# sudo usermod -aG sudo brajesh
# sudo systemctl daemon-reload
