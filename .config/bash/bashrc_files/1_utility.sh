function pretty_list() {
	[[ "${#}" -ne 2 ]] && (echo 'Needs to have 2 parameters' && return 1)
	fzf --preview "${1}" --bind "enter:execute(${2})"
}
