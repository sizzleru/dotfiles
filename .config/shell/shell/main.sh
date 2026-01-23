for file in bashrc; do
	if [ -f "${HOME}/.config/shell/shell/${file}.sh" ]; then
		source "${HOME}/.config/shell/shell/${file}.sh"
	fi
done
