for file in interactive bash history display_manager; do
	if [ -f "${HOME}/.config/shell/bashrc/shell/${file}.sh" ]; then
		. "${HOME}/.config/shell/bashrc/shell/${file}.sh"
	fi
done
