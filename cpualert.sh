#!/bin/bash
#Purpose: Real time CPU utilization Monitoring
#Version: 1.0
#Created Date: Sat Apr 8 02:14:17 PM IST 2023
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
PATHS="/"
HOSTNAME=$(hostname)
CRITICAL=98
WARNING=90
CRITICALMail="Youremailaddress@domain.com"
MAILWAR="Youremailaddress@domain.in"
mkdir -p /var/log/cputilhist
LOGFILE=/var/log/cputilhist/cpusage-`date +%h%d%y`.log

touch $LOGFILE

for path in $PATHS
do
        CPULOAD=`top -b -n 2 -d1 | grep "Cpu(s)" | tail -n1 | awk '{print $2}' | awk -F . '{print $1}'`

if [ -n $WARNING -a -n $CRITICAL ]; then
        if [ "$CPULOAD" -ge "$WARNING" -a "$CPULOAD" -lt "$CRITICAL" ]; then
                echo "`date "+%F %H:%M:%S"` WARNING - $CPULOAD on Host $HOSTNAME" >> $LOGFILE
                echo "Warning Cpuload $CPULOAD Host is $HOSTNAME" | mail -s "CPULOAD is Warning" $MAILWAR #comment this line if you don't want to send warning email
                exit 1
        elif [ "$CPULOAD" -ge "$CRITICAL" ]; then
                echo "`date "+%F %H:%M:%S"` CRITICAL - $CPULOAD on Host $HOSTNAME" >> $LOGFILE
                echo "CRITICAL Cpuload $CPULOAD Host is $HOSTNAME" | mail -s "CPULOAD is CRITICAL" $CRITICALMail #comment this line if you don't want to send critical email
                exit 2
        else
                echo "`date "+%F %H:%M:%S"` OK - $CPULOAD on $HOSTNAME" >> $LOGFILE
                exit 0
        fi
fi
done


# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
# crontab -e then select nano editor then put below line
# */5 * * * * sh /home/brajesh/bashscript/cpualert.sh
