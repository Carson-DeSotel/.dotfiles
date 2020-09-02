#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar top &

# Launch secondary bar if there's an external monitor
monitor=$(xrandr -q | grep HDMI2)
if [[ $monitor = *connected* ]]; then 
    polybar top_secondary &
fi

echo "Polybar launched..."
