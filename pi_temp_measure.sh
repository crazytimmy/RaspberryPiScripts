#!/bin/bash
#Pi Temperature Logger

Date=$(date "+%F-%T")
touch PiTemp_$Date.log

while true;
do
	#Output Date/Time & Temperature reading to text file
	echo $(date +%Y/%m/%d%t%H:%M:%S) " - " $(vcgencmd measure_temp) >> PiTemp_$Date.log
	sleep 10
done
