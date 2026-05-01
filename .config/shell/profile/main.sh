for folder in env shell; do
	if [ -f "${HOME}/.config/shell/profile/${folder}/main.sh" ]; then
		source "${HOME}/.config/shell/profile/${folder}/main.sh"
	fi
done
