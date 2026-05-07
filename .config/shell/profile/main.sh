for folder in env; do
	if [ -f "${HOME}/.config/shell/profile/${folder}/main.sh" ]; then
		source "${HOME}/.config/shell/profile/${folder}/main.sh"
	fi
done
