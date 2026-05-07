for file in interactive bash history display_manager profile; do
	if [ -f "${HOME}/.config/shell/bashrc/shell/${file}.sh" ]; then
		source "${HOME}/.config/shell/bashrc/shell/${file}.sh"
	fi
done
