alias rm='trash-put'

cp() {

	CP='/usr/bin/cp'

	if ! command -v trash-put > /dev/null 2>&1; then
		"${CP}" -r ${@}
		return "${?}"
	fi

	# Requires at least 2 arguments
	if [ "${#}" -lt 2 ]; then
		printf 'ERROR: mv requires at least 2 arguments!\n' >&2
		return 1
	fi

	# Exactly 2 arguments
	if [ "${#}" -eq 2 ]; then
		if [ -f "${2}" ]; then
			trash-put "${2}"
		fi

		"${CP}" -r "${1}" "${2}"
		return 0
	fi

	# More than 2 arguments
	for arg in ${@}; do
		final_arg="${arg}"
	done

	if [ ! -d "${final_arg}" ]; then
		printf 'ERROR: "%s" is not a directory! Aborting...\n' "${final_arg}" >&2
		return 1
	fi

	while [ "${#}" -gt 1 ]; do
		if [ -e "${final_arg}/${1}" ]; then
			trash-put "${final_arg}/${1}"
		fi

		"${CP}" -r "${1}" "${final_arg}"
		shift
	done
}

mv() {

	MV='/usr/bin/mv'

	if ! command -v trash-put > /dev/null 2>&1; then
		"${MV}" ${@}
		return "${?}"
	fi

	# Copy to destination
	cp ${@}
	if [ "${?}" -ne 0 ]; then
		printf 'ERROR: cp returned with status code %s.\n' "${?}"
		return "${?}"
	fi

	# Then remove intial files
	while [ "${#}" -gt 1 ]; do
		trash-put "${1}"
		shift
	done
}
