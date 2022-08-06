#!/bin/bash
#Purpose: To demonstrate for-loop-statement to ping computers using hostfile
#Version: 1.0
#Created Date: Sat 6 Aug 19:38:26 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
#----- SYNTEX -----------
# for ( variable ) in (Values to variable)
# do
#     echo "Variable"
# done

for i in `cat hostfile`
do
    ping -c 1 $i  >> /tmp/pingresults
    valid=`echo $?`
    if [ $valid -gt 1 ]; then
        echo "$i Host is not reachable"
    else
        echo "$i Host is reachable"
    fi
done

#--- Another Example ----

for i in 1 2 3 4 5
do
    echo "$i"
done

# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
