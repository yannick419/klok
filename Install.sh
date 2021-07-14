#!/bin/bash
# Install alarmclock settings
# Yannick Lambregts - 09/06/2021
echo
echo installing mplayer
sudo apt-get install mplayer
echo
echo updating cron
./UpdateCron.sh
echo
echo updating playlists
./UpdatePlaylists.sh
echo
echo Dit sluit binnen 10 seconden
sleep 10