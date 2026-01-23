#!/bin/sh

lg="$(if ! command -v log; then echo 'echo'; fi)"

${lg} -m 'Seting up folders ...'
${lg} mkdir -pv ~/.local/share/xrandr ~/.local/share/i3

${lg} -m 'Seting up monitors ...'
${lg} ~/.local/bin/monitors.sh

${lg} -m 'Executing i3 ...'
${lg} xrdb -merge ~/.config/i3/config

if ${lg} i3 -C; then
	exec ${lg} i3 -V
else
	${lg} -m 'ERROR: i3 config check failed, exiting...' && exit 1
fi

unset lg
