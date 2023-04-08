#!/bin/bash
#Purpose: Log the messages form scripts to log file
#Version: 1.0
#Created Date: Sat Apr 8 09:12:23 PM IST 2023
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

sudo df -h > sudo /tmp/dfh
STATUS=`echo "$?"`
if [ $STATUS -eq 0 ]; then
        logger "Successfully Executed" -t LoggerScript -f /var/log/messages # /var/log/messages  in RHEL [rpm] based distro where as /var/log/syslog in debian [apt] based distro
else 
        logger "Failed to Execute df command" -t LoggerScript -f /var/log/messages # /var/log/messages  in RHEL [rpm] based distro where as /var/log/syslog in debian [apt] based distro
fi

# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
# cat /var/log/syslog |grep LoggerScript in debian based distro
# cat /var/log/messages |grep LoggerScript in rpm based distro
# output will like below
# Apr  8 21:51:04 brajeshvm LoggerScript: Successfully Executed
# Apr  8 21:53:49 brajeshvm LoggerScript: Successfully Executed
# Apr  8 21:53:59 brajeshvm LoggerScript: Successfully Executed
