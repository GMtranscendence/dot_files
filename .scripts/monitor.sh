#!/bin/bash

if [[ $(xrandr | grep "HDMI-0 connected") ]]
then 
	echo $(xrandr --output HDMI-0 --primary --mode 1920x1080 --output eDP-1-1 --mode 1920x1080 --below HDMI-0 --auto &)
else 
	echo $(xrandr --output eDP-1-1 --auto &)
fi
