#!/bin/bash
# Install alarmclock settings
# Yannick Lambregts - 14/07/2021

# 2Do set variable of working directory and use this in all scripts.

#echo
#echo make scripts executable
#find -type f -iname "*.sh" -exec chmod +x {} \;
#echo ------

echo
echo installing mplayer
sudo apt-get install mplayer
echo ------

echo
echo update
./Update.sh
echo ------

echo
echo Dit sluit binnen 100 seconden
sleep 100
