#!/bin/bash

iwconfig wlan0

read -p "Would you like to change the mode to 'monitor' or 'managed'? : " mode


if [[ "$mode" == "monitor" ]]; then
	echo "Changing To Monitor Mode..."
	sudo ifconfig wlan0 down
	sudo iwconfig wlan0 mode monitor
	sudo ifconfig wlan0 up
	echo "WLAN Is Now In Monitor Mode."
elif [[ "$mode" == "managed" ]]; then
	echo "Changing To Managed Mode..."
	sudo ifconfig wlan0 down
	sudo iwconfig wlan0 mode managed
	sudo ifconfig wlan0 up
	echo "WLAN Is Now In Managed Mode."
else
	echo "Invalid Input. No Changes Made."
fi
