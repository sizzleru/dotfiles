for folder in shell; do
	if [ -f "${HOME}/.config/shell/${folder}/main.sh" ]; then
		source "${HOME}/.config/shell/${folder}/main.sh"
	fi
done
