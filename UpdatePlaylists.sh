#!/bin/bash
# updating alarmclock playlist settings
# Yannick Lambregts - 09/06/2021

echo updating playlists
find -P /home/pi/Documents/Alarm/Sleep -type f -iname \*.mp3 > /home/pi/Documents/Alarm/PlaylistSleep.m3u
find -P /home/pi/Documents/Alarm/Wake -type f -iname \*.mp3 > /home/pi/Documents/Alarm/PlaylistWake.m3u
shuf -n 1 /home/pi/Documents/Alarm/PlaylistSleep.m3u > /home/pi/Documents/Alarm/PlaylistSleepOneRandom.m3u
shuf -n 1 /home/pi/Documents/Alarm/PlaylistWake.m3u > /home/pi/Documents/Alarm/PlaylistWakeOneRandom.m3u
echo playlists are updated
echo
echo will close in 10 seconds
sleep 10

