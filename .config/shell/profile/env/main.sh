for file in path applications; do
	if [ -f "${HOME}/.config/shell/profile/env/${file}.sh" ]; then
		source "${HOME}/.config/shell/profile/env/${file}.sh"
	fi
done
