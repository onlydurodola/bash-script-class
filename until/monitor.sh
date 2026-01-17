#!/bin/bash

echo "=== DOWNLOAD MONITOR ==="
echo "Waiting for 'report.pdf' to finish downloading..."
echo ""

file_exist=false
seconds_waited=0

#Keep checking until file exists
until [[ $file_exist == true ]] #Until file exists becomes true
do
    #Check if file exists
    if [[ -f "report.pdf" ]]; then
        file_exist=true
	echo "Download Completed! File is Ready."
    else
	echo "Still waiting... ($seconds_waited seconds)"
	((seconds_waited++))
	sleep 1 #Check every second
    fi

    #Safety: Don't wait forever
    if [[ $seconds_waited -gt 30 ]]; then
	echo "Timeout! Download is taking too long"
	break #exit the loop
    fi
done

echo "Total wait time: $seconds_waited seconds"
