function v() {
	if [ "${#}" -eq 0 ]; then
		"${EDITOR}" .
	else
		"${EDITOR}" ${@}
	fi
}
alias vi='v'
