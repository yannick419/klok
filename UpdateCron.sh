#!/bin/bash
# updating alarmclock settings
# Yannick Lambregts - 14/07/2021

echo Content of Cron before update:
echo
crontab -l
echo

echo Updating NewCron
crontab NewCron.txt
echo Newcron is updated
echo Content of Cron after update:
echo
crontab -l
echo

#echo removing crontab
#crontab -r
#echo crontab removed
#echo
