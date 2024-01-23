# Prompts user for a boolean value, can take an optional parameter to specify default answer
prompt() {
	if [[ $# -eq 1 ]]; then
		default=true
	elif [[ $# -gt 2 ]]; then
		echo "Cannot have more than 2 arguments" 1>&2
		exit 1
	else
		default=$2
	fi

	if [[ "$default" = true ]]; then
		read -rp "$1 [Y/n] " response
		if [[ ! "$response" =~ ^([yY][eE][sS]|[yY])$ ]] && [[ ! -z "$response" ]]; then
			exit 1 
		fi
	else
		read -rp "$1 [y/N] " response
		if [[ ! "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
			exit 1 
		fi
	fi

	unset default
	unset response
}

# Verifies number input
is-int() {
	if [[ $# -eq 1 ]]; then
		[ $1 -eq $1 2>/dev/null -o $1 -eq 0 2>/dev/null ];
	else
		echo "is-int requires exactly one parameter";
		false;
	fi
}
