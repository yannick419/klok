#!/bin/bash
# Install alarmclock settings
# Yannick Lambregts - 09/06/2021
echo
echo updating git
git pull
echo ------
echo
echo make scripts executable
find -type f -iname "*.sh" -exec chmod +x {} \;
echo ------
echo
echo installing mplayer
sudo apt-get install mplayer
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
