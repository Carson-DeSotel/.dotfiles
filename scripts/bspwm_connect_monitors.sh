#!/bin/bash
#
# A script to connect my external monitor w/ bspwm
# Uses user-specific settings. Not automatic.
# Help writing the script from (https://protesilaos.com/codelog/multihead-bspwm-polybar/)
#

monitor=$(xrandr -q | grep HDMI2)
if [[ $monitor = *connected* ]]; then 
	xrandr --output eDP1 --primary --mode 1920x1080 --output HDMI2 --mode 1920x1080 --left-of eDP1
fi
