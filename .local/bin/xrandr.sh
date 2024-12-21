#!/bin/bash

# Display
xrandr --output DP-4 --primary
xrandr --output DP-0 --left-of DP-4
xrandr --output DP-2 --above DP-4
xrandr --output HDMI-0 --right-of DP-4
