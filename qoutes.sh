#!bin/bash
#Purpose: Verifying Difference between quotation marks
#Version: 1.0
#Created Date: Thu 4 Aug 00:58:54 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
VAR1=123456
TEST=Ohdar

# Double Quotes
echo "Execute double quotes $VAR1 $TEST"

# Single Quotes
echo 'Execute Sing Quotes $VAR1 $TEST'

# Reverse Quotes
echo "This Hostname is: `hostname`"

echo "This host name date: `date`"


# ------------------------------- #
# END #
