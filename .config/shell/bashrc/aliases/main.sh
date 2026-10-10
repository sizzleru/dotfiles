for file in editor fetch git system; do
	if [ -f "${HOME}/.config/shell/bashrc/aliases/${file}.sh" ]; then
		. "${HOME}/.config/shell/bashrc/aliases/${file}.sh"
	fi
done
