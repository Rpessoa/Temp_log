#!/bin/bash

#Simple bash script to log the temperature from the Raspberry Pi
#You need to setup your cron to make this script useful
#You need to change the below path to your own

#get temperature from rpi
TEMP=$(vcgencmd measure_temp)

#clean the output to be saved
#TEMP=$(echo $TEMP | grep -oP [0-9]{2}.[0-9])
TEMP=$(echo $TEMP | grep -oP [0-9]{2})


if [ -f "/home/pi/script/temp_log.txt" ]
then
        echo "`date +%D` `date +%T`;" $TEMP >> "/home/pi/script/temp_log.txt"
else
        touch /home/pi/script/temp_log.txt
        echo "`date +%D` `date +%T`;" $TEMP >> "/home/pi/script/temp_log.txt"
        #echo "File temp_log.txt created and temp saved"
fi


