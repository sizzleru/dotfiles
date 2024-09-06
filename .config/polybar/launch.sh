#!/bin/bash

# Remove existing bars
polybar-msg cmd quit &> /dev/null

# Launch a bar on each monitor

MONITOR=DP-4 polybar --reload main-primary &

for monitor in DP-0 DP-2 HDMI-0; do
    MONITOR=${monitor} polybar --reload main-secondary &
done

unset monitor
