#!/bin/bash

dex "${XDG_CONFIG_HOME:-${HOME}/.config}/autostart/xrandr.desktop" >> "${XDG_CACHE_HOME:-${HOME}/.cache}/dex/dex.log"
dex -a >> "${XDG_CACHE_HOME:-${HOME}/.cache}/dex/dex.log"
