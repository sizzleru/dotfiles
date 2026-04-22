for file in trashcli git; do
	if [ -f "${HOME}/.config/shell/bashrc/aliases/${file}.sh" ]; then
		source "${HOME}/.config/shell/bashrc/aliases/${file}.sh"
	fi
done
