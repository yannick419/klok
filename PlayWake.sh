#!/bin/bash
# Play alarm
# Yannick Lambregts - 09/06/2021

# 2Do only play alarm when the alarm switch is on

# 2Do activate light

# 2Do how to stop alarm early?
# wheb snooze butten is clicked: 
# pkill mplayer
# sleep x
# play again

# Muziek speler stoppen in geval dit nog aan staat
pkill mplayer
date >> /klok/log.log
echo mplayer killed >> /klok/log.log

# Play alarm
#nohup mplayer -playlist /home/pi/klok/PlaylistWakeOneRandom.m3u 2>&1 > /dev/null
nohup mplayer -playlist /home/pi/klok/PlaylistWakeOneRandom.m3u 2>&1 >> /klok/log.log
# shuffle song for next alarm
#/home/pi/klok/UpdatePlaylists.sh > /dev/null
/home/pi/klok/UpdatePlaylists.sh >> /klok/log.log


#not working triels
#
#nohup mplayer -shuffle -playlist /home/pi/Documents/Alarm/PlaylistWake.txt 2>&1 > /dev/null
#nohup nvlc --no-one-instance --random --play-and-exit /home/pi/Documents/Alarm/PlaylistWake.m3u 2>&1 > /dev/null
#nvlc --no-one-instance --random --play-and-exit /home/pi/Documents/Alarm/PlaylistWake.m3u >> /home/pi/Documents/Alarm/wakelog.txt
