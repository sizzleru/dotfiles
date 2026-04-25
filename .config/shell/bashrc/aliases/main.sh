for file in editor fetch git trashcli; do
	if [ -f "${HOME}/.config/shell/bashrc/aliases/${file}.sh" ]; then
		source "${HOME}/.config/shell/bashrc/aliases/${file}.sh"
	fi
done
