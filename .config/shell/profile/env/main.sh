for file in locale path xdg host; do
	if [ -f "${HOME}/.config/shell/profile/env/${file}.sh" ]; then
		. "${HOME}/.config/shell/profile/env/${file}.sh"
	fi
done
