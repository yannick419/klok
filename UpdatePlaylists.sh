#!/bin/bash
# updating alarmclock playlist settings
# Yannick Lambregts - 14/07/2021

echo updating playlists
find -P /home/pi/klok/Sleep -type f -iname \*.mp3 > /home/pi/klok/PlaylistSleep.m3u
find -P /home/pi/klok/Wake -type f -iname \*.mp3 > /home/pi/klok/PlaylistWake.m3u
shuf -n 1 /home/pi/klok/PlaylistSleep.m3u > /home/pi/klok/PlaylistSleepOneRandom.m3u
shuf -n 1 /home/pi/klok/PlaylistWake.m3u > /home/pi/klok/PlaylistWakeOneRandom.m3u
echo playlists are updated
echo
echo will close in 10 seconds
sleep 10

