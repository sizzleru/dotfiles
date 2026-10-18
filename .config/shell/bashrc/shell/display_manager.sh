if \
	[ -z "${DISPLAY}" ] && \
	[ -z "${WAYLAND_DISPLAY}" ] && \
	$( command -v tty >/dev/null 2>&1 ) && \
	[ "$( tty )" = '/dev/tty1' ] && \
	[ ! -z "${DM_ENTRY}" ]; then

	exec "${DM_ENTRY}"
fi
