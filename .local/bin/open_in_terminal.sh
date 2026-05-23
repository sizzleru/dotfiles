#!/bin/sh

usage() {
	printf 'Usage: %s [-d|--directory directory] [-h|--help]\n' "${0}" >&2
	exit 1
}

while [ "${#}" -gt 0 ]; do
	case "${1}" in
		-d|--directory)
			if [ -z "${2}" ]; then
				printf -- '-|--file requires an argument\n' >&2
				usage
			fi

			directory="${2}"
			shift 2
			;;
		-h|--help)
			usage
			;;
		-*)
			printf 'Unknown flag: %s\n' "${1}" >&2
			usage
			;;
		*)
			break
			;;
	esac
done

# Set default directory to ${PWD} or ${HOME} if not available
: "${directory:="'${PWD:="${HOME}"}'"}"

# check if sftp mounted
case "${directory}" in
	"'/run/user/$( id -u )/gvfs/sftp:host="*",user=$( id -un )"*)
		SSH_USER="$( echo "${directory}" | grep -oE 'user=[^/]+/' | sed -E -- 's-(^user=|/$)--g' )"
		SSH_HOST="$( echo "${directory}" | grep -oE 'host=[^,]+,' | sed -E -- 's-(^host=|,$)--g' )"
		SSH_DIRECTORY="$( echo "${directory}" | sed -E -- "s-(.*user=${SSH_USER}|')--g" )"

		if command -v kitty >/dev/null; then
			if command -v kitten >/dev/null; then
				kitty kitty +kitten ssh -t "${SSH_USER}@${SSH_HOST}" "cd '${SSH_DIRECTORY}' && exec \${SHELL} -l"
			else
				kitty ssh -t "${SSH_USER}@${SSH_HOST}" "cd '${SSH_DIRECTORY}' && exec \${SHELL} -l"
			fi
		else
			"${TERMINAL?'No terminals available'}" ssh -t "${SSH_USER}@${SSH_HOST}" "cd '${SSH_DIRECTORY}' && exec \${SHELL} -l"
		fi
		;;
	*)
		"${TERMINAL?'No terminals available'}" "$( echo ${directory} | sed -E -- "s-(^'|'$)--g" )"
		;;
esac
