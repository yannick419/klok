#!/bin/bash
# updating alarmclock settings
# Yannick Lambregts - 09/06/2021
pkill mplayer
/home/pi/Documents/Alarm/UpdatePlaylists.sh > /dev/null
nohup mplayer -playlist /home/pi/Documents/Alarm/PlaylistWakeOneRandom.m3u 2>&1 > /dev/null



#not working triels
#
#nohup mplayer -shuffle -playlist /home/pi/Documents/Alarm/PlaylistWake.txt 2>&1 > /dev/null
#nohup nvlc --no-one-instance --random --play-and-exit /home/pi/Documents/Alarm/PlaylistWake.m3u 2>&1 > /dev/null
#nvlc --no-one-instance --random --play-and-exit /home/pi/Documents/Alarm/PlaylistWake.m3u >> /home/pi/Documents/Alarm/wakelog.txt
