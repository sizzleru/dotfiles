for folder in shell visual aliases; do
	if [ -f "${HOME}/.config/shell/bashrc/${folder}/main.sh" ]; then
		. "${HOME}/.config/shell/bashrc/${folder}/main.sh"
	fi
done
