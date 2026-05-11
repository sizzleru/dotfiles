for file in editor fetch file git trashcli; do
	if [ -f "${HOME}/.config/shell/bashrc/aliases/${file}.sh" ]; then
		. "${HOME}/.config/shell/bashrc/aliases/${file}.sh"
	fi
done
