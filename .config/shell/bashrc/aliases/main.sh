for file in editor fetch git; do
	if [ -f "${HOME}/.config/shell/bashrc/aliases/${file}.sh" ]; then
		. "${HOME}/.config/shell/bashrc/aliases/${file}.sh"
	fi
done
