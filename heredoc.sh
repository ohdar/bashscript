#!/bin/bash
#Purpose: Here Document Example
#Version: 1.0
#Created Date: Sat Apr 8 07:37:16 PM IST 2023
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

cat << LINESOFTEXT
This is the first line of here document
Second line in here doc
some text
LINESOFTEXT

# user [userid] [password] in third line below.

ftp -n <<- EOF 2> /dev/null
    open ftp.server.com
    user ftp ftp
    ascii
    cd uploadfolder
    mput file1 file2 file3
EOF

# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
