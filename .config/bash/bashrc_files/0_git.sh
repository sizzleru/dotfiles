alias git=custom_git

function custom_git() {
	case "${1}" in
		alias)		\git config --get-regexp ^alias | sed 's/^alias.//g' | sed -E 's/^([^ ]+ )/\1= /g' ;;
		br)			custom_branch $(echo "${@}" | awk '{ $1=""; print $0 }') ;;
		profile)	custom_profile $(echo "${@}" | awk '{ $1=""; print $0 }') ;;
		*)			\git "${@}" ;;
	esac
}

function custom_profile() {
	case "${1:-show}" in
		show) echo "name: $(\git config user.name), email: $(\git config user.email), key: $(ssh-add -l | awk '{ print $3 }')" ;;
		*) \git config --global include.path "${HOME}/.config/git/${1}" && ssh-add -D && ssh-add "${HOME}/.ssh/${1}" ;;
	esac
}

function custom_branch() {
	case "${1:-show}" in
		show) \git branch -a --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate ;;
		sw) if [[ $(git branch --list | grep "${2}" | wc -l) -eq 0 ]]; then \git switch -c "${2}"; else git switch "${2}"; fi ;;
		*) echo "custom_branch: ${1}: Not a valid command" && return 1
	esac
}
