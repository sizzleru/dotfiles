y() {
	local tmp="$( mktemp -t "yazi-cwd.XXXXXX" )"
	yazi "${@}" --cwd-file="${tmp}"

	if [ -f "${tmp}" ]; then
		cd "$( cat "${tmp}" )"
		rm -f "${tmp}"
	fi
}
