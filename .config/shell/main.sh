for folder in env shell; do
	if [ -f "${HOME}/.config/shell/${folder}/main.sh" ]; then
		source "${HOME}/.config/shell/${folder}/main.sh"
	fi
done
