if [ -z "${DISPLAY}" ] && [ -z "${WAYLAND_DISPLAY}" ] && [ "$( tty )" = '/dev/tty1' ] && [ ! -z "${DM_ENTRY}" ]; then
	exec "${DM_ENTRY}"
fi
