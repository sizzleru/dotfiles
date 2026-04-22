for file in vim trashcli yazi git; do
	if [ -f "${HOME}/.config/shell/bashrc/aliases/${file}.sh" ]; then
		source "${HOME}/.config/shell/bashrc/aliases/${file}.sh"
	fi
done
