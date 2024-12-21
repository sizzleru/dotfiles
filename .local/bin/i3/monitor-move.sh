#!/bin/bash

if [[ "${#}" -ne 1 ]]; then
    echo 'Requires one parameter' && exit 1
fi

MONITOR=

case "${1}" in
    1) MONITOR='DP-4' ;;
    2) MONITOR='DP-0' ;;
    3) MONITOR='DP-2' ;;
    4) MONITOR='HDMI-0' ;;
    *) echo 'Supports numbers 1-4' && exit 1
esac

i3-msg move container to workspace "$(i3-msg -t get_outputs | jq -r '.[] | select(.name == "'$MONITOR'") | .current_workspace')"
