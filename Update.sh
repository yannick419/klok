#!/bin/bash
# Update alarmclock settings
# Yannick Lambregts - 14/07/2021

echo
echo set working directory to /home/pi/klok/
cd /home/pi/klok/
echo ------

echo
echo updating git
git pull
echo ------

echo
echo updating cron
./UpdateCron.sh
echo ------

echo
echo updating playlists
./UpdatePlaylists.sh
echo ------

echo
echo Dit sluit binnen 10 seconden
sleep 10
