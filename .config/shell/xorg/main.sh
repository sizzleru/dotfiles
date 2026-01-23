for file in startx; do
	if [ -f "${HOME}/.config/shell/xorg/${file}.sh" ]; then
		source "${HOME}/.config/shell/xorg/${file}.sh"
	fi
done
