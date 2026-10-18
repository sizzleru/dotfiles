v() {

	if [ "${#}" -eq 0 ]; then
		set -- '.'
	fi

	local tmp="$( mktemp -t 'file-cwd.XXXXXX' )"
	FILEBROWSER_LASTDIR_FILE="${tmp}" command "${EDITOR}" ${@}

	if [ -f "${tmp}" ]; then
		cd "$( cat "${tmp}" )"
		rm -f "${tmp}"
	fi
}
alias vi='v'
