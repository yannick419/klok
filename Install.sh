#!/bin/bash
# Install alarmclock settings
# Yannick Lambregts - 14/07/2021

# 2Do set variable of working directory and use this in all scripts.
# this is temp var, make permanent by placing in /etc/environment
export klokDir=$(pwd)/klok
echo working dir= 
echo $klokDir


#echo
#echo make scripts executable
#find -type f -iname "*.sh" -exec chmod +x {} \;
#echo ------

echo
echo apt-get update
sudo apt-get update
echo ------

echo
echo installing mplayer
sudo apt-get install mplayer -y
echo ------

echo
echo update
cd /home/pi/klok
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
echo Herstarten binnen 10 seconden.
sleep 10
sudo reboot
