RED='\[\e[31m\]'
GREEN='\[\e[38;2;166;227;161m\]'
BLUE='\[\e[38;2;137;180;250m\]'

CYAN='\033[36m'
GRAY='\[\e[38;2;108;112;134m\]'
PINK='\[\e[38;2;245;194;231m\]'

WHITE='\033[37m'
BLACK='\033[30m'

RESET='\[\e[0m\]'

EXITCODE="$( if [ "${?}" -ne 0 ]; then echo "${RED}✗ ${RESET}"; fi )"
SEPERATOR="$( if [ "${TERM}" == 'linux' ]; then echo '>'; else echo '❯'; fi )"

# Fallbacks
: "${USERNAME:="$( id -un )"}"
: "${HOSTNAME:="$( hostname || hostnamectl --static || echo 'localhost' )"}"

#PS1="${EXITCODE}${PINK}${USERNAME}${GRAY}@${BLUE}${HOSTNAME} ${GREEN}\w ${GRAY}${SEPERATOR} ${RESET}"

build_prompt() {
	exit_code="${?}"

	INNER_PADDING_LEFT=1
	INNER_PADDING_RIGHT=1

	row_username="󰀄  ${USERNAME}"
	row_username_display="󰀄  ${GREEN}${USERNAME}${RESET}"

	row_hostname="  ${HOSTNAME}"
	row_hostname_display="  ${PINK}${HOSTNAME}${RESET}"

	row_os="  $( uname -o )"
	row_os_display="  ${CYAN}$( uname -o )${RESET}"

	row_time="  $( date '+%r' )"
	row_time_display="  ${PINK}$( date '+%r' )${RESET}"

	row_mount="󰋊  $( df "${PWD}" | awk 'NR==2 { print $NF }' )"
	row_mount_display="󰋊  ${WHITE}$( df "${PWD}" | awk 'NR==2 { print $NF }' )${RESET}"

	row_directory="  ${PWD}"
	row_directory_display="  ${BLUE}${PWD}${RESET}"

	row_status="󰈆  ${exit_code}"
	row_status_display="󰈆  $( if [ "${exit_code}" -eq 0 ]; then printf '%s\n' "${GREEN}${exit_code}${RESET}"; else printf '%s\n' "${RED}${exit_code}${RESET}"; fi )"


	#row_status_display="$( if [ "${exit_code}" -eq 0 ]; then printf '🟢 '; else printf '🔴 '; fi )"

	max_row_width="$(
		printf '%s %s %s %s %s %s %s\n' \
			"${#row_username}" \
			"${#row_hostname}" \
			"${#row_os}" \
			"${#row_time}" \
			"${#row_mount}" \
			"${#row_directory}" \
			"${#row_status}" | tr ' ' '\n' | sort -rn | head -n 1
	)"

	total_row_width="$(( "${max_row_width}" + "${INNER_PADDING_LEFT}" + "${INNER_PADDING_RIGHT}" ))"

	if [ -n "${PROMPT_STARTED}" ]; then
		PS1='\n'
	else
		PS1=''
	fi

	PROMPT_STARTED=1

	PS0='\n'

	PS1="${PS1}┌$( printf '%.0s─' $( seq 1 "${total_row_width}" ) )┐\n"
	PS1="${PS1}│ ${row_username_display} $( printf "%$(( "${max_row_width}" - "${#row_username}" ))s" )│\n"
	PS1="${PS1}│ ${row_hostname_display} $( printf "%$(( "${max_row_width}" - "${#row_hostname}" ))s" )│\n"
	PS1="${PS1}│ ${row_os} $( printf "%$(( "${max_row_width}" - "${#row_os}" ))s" )│\n"
	PS1="${PS1}├$( printf '%.0s─' $( seq 1 "${total_row_width}" ) )┤\n"
	PS1="${PS1}│ ${row_time_display} $( printf "%$(( "${max_row_width}" - "${#row_time}" ))s" )│\n"
	PS1="${PS1}│ ${row_mount_display} $( printf "%$(( "${max_row_width}" - "${#row_mount}" ))s" )│\n"
	PS1="${PS1}│ ${row_directory_display} $( printf "%$(( "${max_row_width}" - "${#row_directory}" ))s" )│\n"
	PS1="${PS1}│ ${row_status_display} $( printf "%$(( "${max_row_width}" - "${#row_status}" ))s" )│\n"
	PS1="${PS1}├$( printf '%.0s─' $( seq 1 "${total_row_width}" ) )┘\n"
	PS1="${PS1}╰─◆─▶ "

	PS2="  │ "
}
PROMPT_COMMAND='build_prompt'
