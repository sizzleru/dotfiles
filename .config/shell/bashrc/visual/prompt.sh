# catppuccin mocha
ROSEWATER='\[\e[38;2;245;224;220m\]'
FLAMINGO='\[\e[38;2;242;205;205m\]'
PINK='\[\e[38;2;245;194;231m\]'
MAUVE='\[\e[38;2;203;166;247m\]'
RED='\[\e[38;2;243;139;168m\]'
MAROON='\[\e[38;2;235;160;172m\]'
PEACH='\[\e[38;2;250;179;135m\]'
YELLOW='\[\e[38;2;249;226;175m\]'
GREEN='\[\e[38;2;166;227;161m\]'
TEAL='\[\e[38;2;148;226;213m\]'
SKY='\[\e[38;2;137;220;235m\]'
SAPPHIRE='\[\e[38;2;116;199;236m\]'
BLUE='\[\e[38;2;137;180;250m\]'
LAVENDER='\[\e[38;2;180;190;254m\]'

# neutrals
TEXT='\[\e[38;2;205;214;244m\]'
SUBTEXT='\[\e[38;2;166;173;200m\]'
OVERLAY='\[\e[38;2;108;112;134m\]'
GRAY='\[\e[38;2;88;91;112m\]'

RESET='\[\e[0m\]'

# Fallbacks
: "${USERNAME:="$( id -un )"}"
: "${HOSTNAME:="$( hostname || hostnamectl --static || echo 'localhost' )"}"

#PS1="${EXITCODE}${PINK}${USERNAME}${GRAY}@${BLUE}${HOSTNAME} ${GREEN}\w ${GRAY}${SEPERATOR} ${RESET}"

build_prompt() {
	exit_code="${?}"

	INNER_PADDING_LEFT=1
	INNER_PADDING_RIGHT=1

	row_username="󰀄  ${USERNAME}"
	row_username_display="󰀄  ${MAUVE}${USERNAME}${RESET}"

	row_hostname="  ${HOSTNAME}"
	row_hostname_display="  ${BLUE}${HOSTNAME}${RESET}"

	row_os="  $( uname -o )"
	row_os_display="  ${SAPPHIRE}$( uname -o )${RESET}"

	staged="$( git diff --cached --name-only 2>/dev/null | wc -l | tr -d ' ' )"
	unstaged="$( git diff --name-only 2>/dev/null | wc -l | tr -d ' ' )"
	untracked="$( git ls-files --others --exclude-standard 2>/dev/null | wc -l | tr -d ' ' )"
	ahead="$( git rev-list @{u}..HEAD 2>/dev/null | wc -l | tr -d ' ' )"
	behind="$( git rev-list HEAD..@{u} 2>/dev/null | wc -l | tr -d ' ' )"


	git_branch="$( git branch --show-current 2>/dev/null )"
	row_git_branch="  ${git_branch}"
	row_git_branch_display="  ${PINK}${git_branch}${RESET}"

	row_git_status=" "
	row_git_status_display=" "
	if [ "${staged}" -gt 0 ]; then
		row_git_status="${row_git_status} ●${staged}"
		row_git_status_display="${row_git_status_display} ${GREEN}●${RESET}${staged}"
	fi

	if [ "${unstaged}" -gt 0 ]; then
		row_git_status="${row_git_status} ●${unstaged}"
		row_git_status_display="${row_git_status_display} ${YELLOW}●${RESET}${unstaged}"
	fi

	if [ "${untracked}" -gt 0 ]; then
		row_git_status="${row_git_status} ●${untracked}"
		row_git_status_display="${row_git_status_display} ${RED}●${RESET}${untracked}"
	fi

	if [ "${ahead}" -gt 0 ]; then
		row_git_status="${row_git_status} ●${ahead}"
		row_git_status_display="${row_git_status_display} ${BLUE}↑${RESET}${ahead}"
	fi

	if [ "${behind}" -gt 0 ]; then
		row_git_status="${row_git_status} ●${behind}"
		row_git_status_display="${row_git_status_display} ${PINK}↓${RESET}${behind}"
	fi

	row_time="  $( date '+%r' )"
	row_time_display="  ${OVERLAY}$( date '+%r' )${RESET}"

	row_mount="󰋊  $( df "${PWD}" | awk 'NR==2 { print $NF }' )"
	row_mount_display="󰋊  ${SAPPHIRE}$( df "${PWD}" | awk 'NR==2 { print $NF }' )${RESET}"

	row_directory="  ${PWD}"
	row_directory_display="  ${BLUE}${PWD}${RESET}"

	row_status="󰈆  ${exit_code}"
	row_status_display="󰈆  $( if [ "${exit_code}" -eq 0 ]; then printf '%s\n' "${GREEN}${exit_code}${RESET}"; else printf '%s\n' "${RED}${exit_code}${RESET}"; fi )"

	max_row_width="$(
		printf '%s %s %s %s %s %s %s %s %s\n' \
			"${#row_username}" \
			"${#row_hostname}" \
			"${#row_os}" \
			"${#row_git_branch}" \
			"${row_git_status}" \
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

	PS0=''

	PS1="${PS1}${TEXT}┌$( printf '%.0s─' $( seq 1 "${total_row_width}" ) )┐${RESET}\n"
	PS1="${PS1}${TEXT}│${RESET} ${row_username_display} $( printf "%$(( "${max_row_width}" - "${#row_username}" ))s" )${TEXT}│${RESET}\n"
	PS1="${PS1}${TEXT}│${RESET} ${row_hostname_display} $( printf "%$(( "${max_row_width}" - "${#row_hostname}" ))s" )${TEXT}│${RESET}\n"
	PS1="${PS1}${TEXT}│${RESET} ${row_os} $( printf "%$(( "${max_row_width}" - "${#row_os}" ))s" )${TEXT}│${RESET}\n"

	# git
	if [ -n "${git_branch}" ]; then
		PS1="${PS1}├$( printf '%.0s─' $( seq 1 "${total_row_width}" ) )┤\n"
		PS1="${PS1}│ ${row_git_branch} $( printf "%$(( "${max_row_width}" - "${#row_git_branch}" ))s" )│\n"
		PS1="${PS1}│ ${row_git_status_display} $( printf "%$(( "${max_row_width}" - "${#row_git_status}" ))s" )│\n"
	fi

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
