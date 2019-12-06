#!/bin/bash

#Simple bash script to log the temperature from the Raspberry Pi
#You need to setup your cron to make this script useful
#You need to change the below path to your own

#get temperature from rpi
TEMP=$(vcgencmd measure_temp)

#clean the output to be saved
TEMP=$(echo $TEMP | grep -oP [0-9]{2}.[0-9])

#echo "$TEMP"

if [ -f "/home/pi/temp_log.txt" ]
then
	echo $TEMP >> "/home/pi/temp_log.txt"
	#echo "New temp saved"
else
	touch /home/pi/textfiles/temp_log.txt
	echo $TEMP > "/home/pi/temp_log.txt"
	#echo "File temp_log.txt created and temp saved"
fi




