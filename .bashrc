# Interactive
case "${-}" in
	*i*) ;;
	*) return ;;
esac

# Prompt
PS1='[\u@\h \W]\$ '

# Aliases
alias v=vim

# Bashism
if [ -n "${BASH_VERSION}" ]; then
	set -o vi
fi
