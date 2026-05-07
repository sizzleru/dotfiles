for file in path xdg host; do
	if [ -f "${HOME}/.config/shell/profile/env/${file}.sh" ]; then
		source "${HOME}/.config/shell/profile/env/${file}.sh"
	fi
done
