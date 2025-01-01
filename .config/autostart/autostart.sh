#!/bin/bash

: ${XDG_CONFIG_HOME:=${HOME}/.config}
: ${XDG_CACHE_HOME:=${HOME}/.cache}

dex "${XDG_CONFIG_HOME}/autostart/xrandr.desktop" >> "${XDG_CACHE_HOME}/dex/dex.log" && \
dex "${XDG_CONFIG_HOME}/autostart/sshfs.desktop" >> "${XDG_CACHE_HOME}/dex/dex.log" && \
dex -a >> "${XDG_CACHE_HOME:-${HOME}/.cache}/dex/dex.log"
