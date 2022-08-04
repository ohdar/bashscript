#!/bin/bash
#Purpose: What is variable? How is it help us in writing shell scripts?
#Version:  1.0
#Created Date: Thu 4 Aug 01:07:26 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
A=10
Ba=23
BA=45
HOSTNAME=$(hostname)
DATE=`date`
lvalue=333
False@Var=False
Hyphen_a=WrongValue

echo "Variable A Value: $A"
echo "Variable B Value: $Ba"
echo "Variable B Value: $BA"
echo "Variable HOST Value: $HOSTNAME"
echo "Variable DATE Value: $DATE"
echo "wRONG Variable 1Value: $1value"
echo 'False @ Variable:' $False@Var
echo "hyphen-a Variable Value: $Hyphen_a"


# ------------------------------- #
# END #
