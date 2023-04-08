#!/bin/bash
#Purpose: Monitoring Disk Space Utilization and Send Email Alert
#Version: 1.0
#Created Date: Sat Apr 8 05:44:32 PM IST 2023
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

THRESHOULD=20
mailto="root"
HOSTNAME=$(hostname)

for path in `/bin/df -h | grep -vE 'Filesystem|tmpfs' | awk '{print $5}' | sed 's/%//g'`
do
    if [ $path -ge $THRESHOULD ]; then
        df -h | grep $path% >> /tmp/temp
    fi
done

VALUE=`cat /tmp/temp/ | wc -l`
    if [ $VALUE -ge 1 ]; then
        mail -s "$HOSTNAME Disk Usage is Critical" $mailto < /tmp/temp
    fi

#rm -rf /tmp/temp


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
