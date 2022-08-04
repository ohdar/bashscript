#!/bin/bash
#Purpose: This script is to demonstrate special variables and how it is useful in the scripting.
#Version: 1.0
#Created Date: Thu 4 Aug 13:41:41 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

# -- $*   : It stores the complete set of positional parameters as a single string
# -- $#   : It is set to the number of arguments specified
# -- $1   : First argument
# -- $2   : Second argument
# -- $0   : name of executed command
# -- "$@" : each quoted string treated as a seperate argument
# -- $?   : exit status of last command
# -- $$   : PID of the current shell
# -- $!   : PID of the last background job


echo "'$*' output is $*"
echo "'$#' output is $#"
echo "'$1 & $2' output is $1 and $2"
echo "'$@' output is $@"
echo "'$?' output is $?"
echo "'$$' output is $$"
sleep 400 &
echo "'$!' output is $!"
echo "'$0' your current program name is $0"

# ------------------------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x spaciavariables.sh
# ./specialvariables.sh This is test program for specialvaiables

# END #
