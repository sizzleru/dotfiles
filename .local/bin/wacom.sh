#!/bin/sh

STYLUS_NAME=$(xsetwacom --list devices | grep 'type: STYLUS' | sed 's/\s*id.*//g')
MONITOR_ID="HEAD-$(xrandr --listactivemonitors | awk -F: '/HDMI/ { print $1 }' | awk '{ print $1 }')"

xsetwacom set "${STYLUS_NAME}" MapToOutput "${MONITOR_ID}"

unset STYLUS_NAME MONITOR_ID
