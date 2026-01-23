if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ] && [ "$(command -v startx)" ]; then
	log -n xorg -m 'Valid display detected on /dev/tty1, attempting to start xorg'
	startx 2>&1 | log -n xorg
fi
