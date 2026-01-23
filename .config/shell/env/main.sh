for file in path xdg xorg ibus git; do
	if [ -f "${HOME}/.config/shell/env/${file}.sh" ]; then
		source "${HOME}/.config/shell/env/${file}.sh"
	fi
done
