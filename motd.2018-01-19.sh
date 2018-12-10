#! /usr/bin/env bash

# Basic info
HOSTNAME=`uname -n`
ROOT=`df -Ph | grep xvda1 | awk '{print $4}' | tr -d '\n'`

# System load
MEMORY1=`free -t -m | grep Total | awk '{print $3" MB";}'`
MEMORY2=`free -t -m | grep "Mem" | awk '{print $2" MB";}'`

#LOAD1=`cat /proc/loadavg | awk {'print $1'}`
#LOAD5=`cat /proc/loadavg | awk {'print $2'}`
LOAD15=`cat /proc/loadavg | awk {'print $3'}`

# Colors

R="\033[01;31m"
B="\033[01;34m"
Y="\033[01;33m"
G="\033[00;32m"
W="\033[00;97m"


cat << "EOF"
                           *     .--.
                                / /  `
               +               | |
                      '         \ \__,
                  *          +   '--'  *
                      +   /\
         +              .'  '.   *
                *      /======\      +
                      ;:.  _   ;
                      |:. (_)  |
                      |:.  _   |
            +         |:. (_)  |          *
                      ;:.      ;
                    .' \:.    / `.
                   / .-'':._.'`-. \
                   |/    /||\    \|
             jpl _..--"""````"""--.._
           _.-'``                    ``'-._
         -'                                '-
EOF

figlet -f alligator2 H E L L O

echo -e "
$Y Welcome to $HOSTNAME!
~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~
$W - Disk Space: $ROOT remaining
 - CPU usage: $LOAD15 (15min)
 - Memory used: $MEMORY1 / $MEMORY2
 - Swap in use: `free -m | tail -n 1 | awk '{print $3}'` MB
"

