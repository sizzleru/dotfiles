for file in editor fetch file git; do
	if [ -f "${HOME}/.config/shell/bashrc/aliases/${file}.sh" ]; then
		. "${HOME}/.config/shell/bashrc/aliases/${file}.sh"
	fi
done
