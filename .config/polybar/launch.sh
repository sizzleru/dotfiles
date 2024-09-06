#!/bin/bash

# Remove existing bars
polybar-msg cmd quit &> /dev/null

# Launch a bar on each monitor

MONITOR=DP-4 polybar --reload main-primary &
MONITOR=DP-0 polybar --reload main-left &
MONITOR=DP-2 polybar --reload main-top &
MONITOR=HDMI-0 polybar --reload main-right &
