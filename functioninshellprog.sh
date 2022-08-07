#!/bin/bash
#Purpose: To demonstrate the function programming in shell script
#Version: 1.0 
#Created Date: Sun 7 Aug 15:07:14 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
#-------- Syntex ---------
# function name () {
#    Statements
#    values
# }
# name 

function takebackup (){
    if [ -f $1 ]; then
        BACKUP="/home/brajesh/Desktop/$(basename ${1}).$(date +%F).$$"
        echo "Backing up $1 to ${BACKUP}"
        cp $1 $BACKUP
    fi
}

takebackup /etc/hosts
    if [ $? -eq 0 ]; then
    echo "Backup Success"
    fi

function testing (){
    echo "Just Testing Function"    
}

testing


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
