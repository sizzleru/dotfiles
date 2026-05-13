if [ -n "${BASH_VERSION}" ]; then
	shopt -s histappend
	PROMPT_COMMAND='history -a; history -n'
fi
