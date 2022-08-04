#!/bin/bash
#Purpose: This file is demonstrating case statement
#Version: 1.0
#Created Date: Thu 4 Aug 01:27:28 IST 2022
#Modified Date:
#Author: Brajesh Ohdar
# START #
# ------------------------------- #

#!/bin/bash

echo "Welcome tarnished. Please select starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"
 
read class

case $class in
        1)
                type="Samurai"
                hp=10
                attack=20
                ;;
        2)
                type="Prisoner"
                hp=20
                attack=4
                ;;
        3)
                type="Prophet"
                hp=30
                attack=4
                ;;
esac

echo "You chosen the $type class. Your HP is $hp and your attack is $attack"


# ------------------------------- #
# END #
