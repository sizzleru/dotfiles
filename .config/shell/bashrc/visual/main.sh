for file in prompt; do
	if [ -f "${HOME}/.config/shell/bashrc/visual/${file}.sh" ]; then
		. "${HOME}/.config/shell/bashrc/visual/${file}.sh"
	fi
done
