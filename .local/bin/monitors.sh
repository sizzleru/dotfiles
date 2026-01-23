#!/bin/sh

log -m 'Setting up LG 27GL850 (DP-4)'
xrandr --output DP-4 --primary

log -m 'Setting up LG Full (DP-0)'
xrandr --output DP-0 --left-of DP-4

log -m 'Setting up ViewSonic VA2719 (DP-2)'
xrandr --output DP-2 --above DP-4

log -m 'Setting up Wacom Cintiq 22 (HDMI-0)'
xrandr --output HDMI-0 --right-of DP-4
