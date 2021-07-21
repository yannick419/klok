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
echo installing pirate-audio
git clone https://github.com/pimoroni/pirate-audio
cd pirate-audio/mopidy
sudo ./install.sh
echo ------

echo
echo
echo
echo
echo De installatie is compleet.
echo Dit sluit binnen 10 seconden.
sleep 10
