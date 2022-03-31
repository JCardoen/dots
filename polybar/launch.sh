#!/usr/bin/env bash
dir="$HOME/.config/polybar"

# Kill any active instances
killall -q polybar

# show connected screens
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main -c "$dir/default/config.ini"
done
