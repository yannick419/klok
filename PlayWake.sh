#!/bin/bash
# Play alarm
# Yannick Lambregts - 09/06/2021

# clear and create LogPlayWake.log
date > LogPlayWake.log

# 2Do only play alarm when the alarm switch is on

# 2Do activate light

# 2Do how to stop alarm early?
# wheb snooze butten is clicked: 
# pkill mplayer
# sleep x
# play again

# 2Do use the variable "klokDir"
echo klokDir= 
echo $klokDir
echo

# Muziek speler stoppen in geval dit nog aan staat
pkill mplayer
date >> LogPlayWake.log
echo mplayer killed >> LogPlayWake.log

# Play alarm
#nohup mplayer -playlist /home/pi/klok/PlaylistWakeOneRandom.m3u 2>&1 > /dev/null
#nohup mplayer -playlist /home/pi/klok/PlaylistWakeOneRandom.m3u 2>&1 >> LogPlayWake.log
nohup mplayer -playlist /home/pi/klok/PlaylistWake.m3u 2>&1 >> LogPlayWake.log
# shuffle song for next alarm
#/home/pi/klok/UpdatePlaylists.sh > /dev/null
#/home/pi/klok/UpdatePlaylists.sh >> LogPlayWake.log
/home/pi/klok/Update.sh


#not working triels
#
#nohup mplayer -shuffle -playlist /home/pi/Documents/Alarm/PlaylistWake.txt 2>&1 > /dev/null
#nohup nvlc --no-one-instance --random --play-and-exit /home/pi/Documents/Alarm/PlaylistWake.m3u 2>&1 > /dev/null
#nvlc --no-one-instance --random --play-and-exit /home/pi/Documents/Alarm/PlaylistWake.m3u >> /home/pi/Documents/Alarm/wakelog.txt
