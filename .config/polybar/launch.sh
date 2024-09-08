#!/bin/bash

# Remove existing bars
polybar-msg cmd quit &>> /home/sizzleru/.cache/polybar/polybar.log

# Launch a bar on each monitor

MONITOR=DP-4 polybar --reload main-primary &>> /home/sizzleru/.cache/polybar/polybar.log &
MONITOR=DP-0 polybar --reload main-left &>> /home/sizzleru/.cache/polybar/polybar.log &
MONITOR=DP-2 polybar --reload main-top &>> /home/sizzleru/.cache/polybar/polybar.log &
MONITOR=HDMI-0 polybar --reload main-right &>> /home/sizzleru/.cache/polybar/polybar.log &
