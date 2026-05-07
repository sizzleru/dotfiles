for file in bashrc; do
	if [ -f "${HOME}/.config/shell/profile/shell/${file}.sh" ]; then
		source "${HOME}/.config/shell/profile/shell/${file}.sh"
	fi
done
