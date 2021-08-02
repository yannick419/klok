#!/bin/bash
# Update alarmclock settings
# Yannick Lambregts - 14/07/2021

echo
echo set working directory to /home/pi/klok/
cd /home/pi/klok/
echo ------

./UpdateGit.sh

./UpdateCron.sh

./UpdatePlaylists.sh

echo
echo Dit sluit binnen 10 seconden
sleep 10