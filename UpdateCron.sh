#!/bin/bash
# Updating alarmclock Crontab settings
# Yannick Lambregts - 02/08/2021

echo
echo Content of Cron before update:
crontab -l
echo ------

echo
echo Updating NewCron
crontab NewCron.txt
echo Newcron is updated
echo Content of Cron after update:
crontab -l
echo ------

#echo removing crontab
#crontab -r
#echo crontab removed
#echo
