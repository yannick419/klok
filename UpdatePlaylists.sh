#!/bin/bash
# Updating alarmclock playlist settings
# Yannick Lambregts - 02/08/2021

echo
echo updating playlists
find -P /home/pi/klok/Sleep -type f -iname \*.mp3 > /home/pi/klok/PlaylistSleep.m3u
find -P /home/pi/klok/Wake -type f -iname \*.mp3 > /home/pi/klok/PlaylistWake.m3u
shuf -n 1 /home/pi/klok/PlaylistSleep.m3u > /home/pi/klok/PlaylistSleepOneRandom.m3u
shuf -n 1 /home/pi/klok/PlaylistWake.m3u > /home/pi/klok/PlaylistWakeOneRandom.m3u
echo playlists are updated
echo ------
echo
