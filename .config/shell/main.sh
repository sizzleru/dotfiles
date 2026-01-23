for folder in env shell xorg; do
	if [ -f "${HOME}/.config/shell/${folder}/main.sh" ]; then
		source "${HOME}/.config/shell/${folder}/main.sh"
	fi
done
