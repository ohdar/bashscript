#!/bin/bash
#Purpose: This program display Operating system deatils
#Version: 1.0
#Created Date: Sat 6 Aug 00:45:02 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #
## Bash Conditional Expressions ###
# for more find this reference link :- https://www.gnu.org/software/bash/manual/html_node/Bash-Conditional-Expressions.html
#   -b FILE          FILE exists and is block special
#   -c FILE          FILE exists and is character special
#   -d FILE          FILE exists and is a directory
#   -e FILE          FILE exists
#   -f FILE          FILE exists and is a regular file
#   -g FILE          FILE exists and is set-group-ID
#   -G FILE          FILE exists and is owned by the effective group ID
#   -h FILE          FILE exists and is a symbolic link (same as -L)
#   -k FILE          FILE exists and has its sticky bit set
#   -L FILE          FILE exists and is a symbolic link (same as -h)
#   -O FILE          FILE exists and is owned by the effective user ID
#   -p FILE          FILE exists and is a named pipe
#   -r FILE          FILE exists and read permission is granted
#   -s FILE          FILE exists and has a size greater than zero
#   -S FILE          FILE exists and is a socket
#   -t FD            file descriptor FD is opened on a terminal
#   -u FILE          FILE exists and its set-user-ID bit is set
#   -w FILE          FILE exists and write permission is granted
#   -x FILE          FILE exists and execute (or search) permission is granted

#set -e

#Display Kernel Information
echo "$(uname -r)"
#Display Operating system type
echo "$(uname -s)"

#Display Current user of Operating System
echo "$(whoami)"

#Display Current Working Directory
echo "$(pwd)"

#Display Linux Distribution
get_distribution() {
	lsb_dist=""
	# Every system that we officially support has /etc/os-release
	if [ -r /etc/os-release ]; then
		lsb_dist="$(. /etc/os-release && echo "$ID")"
	fi
	# Returning an empty string here should be alright since the
	# case statements don't act unless you provide an actual value
	echo "$lsb_dist"
}

get_distribution

function flushdns() {
	# Flush DNS cache
	if [[ $OSTYPE == darwin* ]]; then
		# works on macOS
		alias flushdns='sudo dscacheutil -flushcache'
	elif [[ $OSTYPE == linux* ]]; then
		# works on Ubuntu 18.04+
		alias flushdns='sudo systemd-resolve --flush-caches'
	fi
 	echo "DNS FLUSHED"
}

flushdns

function checkos (){
UNAME=$(uname -s | tr '[:upper:]' '[:lower:]')

# example if/esle statement 1
if [[ $UNAME = darwin ]]; then
  echo "You are on macOS"
elif [[ $UNAME = linux ]]; then 
  echo "You are on Linux"
fi

# example if/esle statement 2
[[ $UNAME = darwin ]] && echo "You are on macOS1" || echo "You are on macOS2"

# example if/esle statement 3
if [[ $UNAME = darwin ]]; then echo "You are on macOS3"; else echo "You are on macOS4"; fi

}

checkos

# ------------------------------- #
# END #
# ---------------XXXXX---------------- #
# Execute below commands in terminal for this file and spot the difference
# sudo chmod +x filename.sh
# ./filename.sh
# ./filename.sh options if required
# sh filename.sh
