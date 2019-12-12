#!/bin/bash
count=`pkill -c cautoclick`
if (( count > 0 )); then
	notify-send "Stopped autoclicker!"
	kill `ps -aux | grep "/bin/bash $0" | grep -v grep | awk '{print $2}'`
else
	notify-send "Started autoclicker!"
	while true; do
		cautoclick -i 1 -n 100 -p 1
	done
fi
