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

# fallbacks
: "${USERNAME:="$( id -un )"}"
: "${HOSTNAME:="$( hostname || hostnamectl --static || echo 'localhost' )"}"

build_prompt() {

	# saved for later
	exit_code="${?}"

	# formatting
	OUTER_PADDING_LENGTH=1
	INNER_PADDING_LENGTH=2

	OUTER_PADDING="$( printf "%${OUTER_PADDING_LENGTH}s" )"
	INNER_PADDING="$( printf "%${INNER_PADDING_LENGTH}s" )"

	row_username_icon='󰀄'
	row_username_data="${USERNAME}"
	row_username="${row_username_icon}${INNER_PADDING}${row_username_data}"
	row_username_display="${row_username_icon}${INNER_PADDING}${MAUVE}${row_username_data}${RESET}"

	row_hostname_icon=''
	row_hostname_data="${HOSTNAME}"
	row_hostname="${row_hostname_icon}${INNER_PADDING}${row_hostname_data}"
	row_hostname_display="${row_hostname_icon}${INNER_PADDING}${BLUE}${row_hostname_data}${RESET}"

	row_os_icon='󰍹'
	row_os_data="$( uname -o )"
	row_os="${row_os_icon}${INNER_PADDING}${row_os_data}"
	row_os_display="${row_os_icon}${INNER_PADDING}${SAPPHIRE}${row_os_data}${RESET}"

	row_shell_icon=''
	row_shell_data="$( basename "$( ps -p "${$}" -o comm= 2>/dev/null )" )"
	if [ -z "${row_shell_data}" ]; then
		if [ -n "${BASH_VERSION}" ]; then
			row_shell_data='bash'
		else
			row_shell_data='sh'
		fi
	fi
	row_shell="${row_shell_icon}${INNER_PADDING}${row_shell_data}"
	row_shell_display="${row_shell_icon}${INNER_PADDING}${TEAL}${row_shell_data}${RESET}"

	row_motd_icon='󰆈'
	motd_file="${HOME}/.local/share/motd/messages"
	if [ -f "${motd_file}" ] && $( command -v shuf >/dev/null ); then
		row_motd_data="$( cat "${HOME}/.local/share/motd/messages" | shuf -n 1 )"
	else
		row_motd_data="Welcome back $( ( [ -n "${USERNAME}" ] && printf '%s\n' "${USERNAME}" ) || id -un )!"
	fi
	row_motd="${row_motd_icon}${INNER_PADDING}${row_motd_data}"
	row_motd_display="${row_motd_icon}${INNER_PADDING}${PEACH}${row_motd_data}${RESET}"

	row_git_branch_icon=''
	row_git_branch_data="$( git branch --show-current 2>/dev/null )"
	row_git_branch="${row_git_branch_icon}${INNER_PADDING}${row_git_branch_data}"
	row_git_branch_display="${row_git_branch_icon}${INNER_PADDING}${PINK}${row_git_branch_data}${RESET}"

	git_staged="$( git diff --cached --name-only 2>/dev/null | wc -l | tr -d ' ' )"
	git_unstaged="$( git diff --name-only 2>/dev/null | wc -l | tr -d ' ' )"
	git_untracked="$( git ls-files --others --exclude-standard 2>/dev/null | wc -l | tr -d ' ' )"
	git_ahead="$( git rev-list @{u}..HEAD 2>/dev/null | wc -l | tr -d ' ' )"
	git_behind="$( git rev-list HEAD..@{u} 2>/dev/null | wc -l | tr -d ' ' )"
	git_all="$(( "${staged}" + "${git_unstaged}" + "${git_untracked}" + "${git_ahead}" + "${git_behind}" ))"

	row_git_status_icon=''
	row_git_status="${row_git_status_icon}${INNER_PADDING}"
	row_git_status_display="${row_git_status_icon}${INNER_PADDING}"
	if [ "${git_staged}" -gt 0 ]; then
		row_git_status="${row_git_status}●${git_staged} "
		row_git_status_display="${row_git_status_display}${GREEN}●${RESET}${git_staged} "
	fi

	if [ "${git_unstaged}" -gt 0 ]; then
		row_git_status="${row_git_status}●${git_unstaged} "
		row_git_status_display="${row_git_status_display}${YELLOW}●${RESET}${git_unstaged} "
	fi

	if [ "${git_untracked}" -gt 0 ]; then
		row_git_status="${row_git_status}●${git_untracked} "
		row_git_status_display="${row_git_status_display}${RED}●${RESET}${git_untracked} "
	fi

	if [ "${git_ahead}" -gt 0 ]; then
		row_git_status="${row_git_status}●${git_ahead} "
		row_git_status_display="${row_git_status_display}${BLUE}↑${RESET}${git_ahead} "
	fi

	if [ "${git_behind}" -gt 0 ]; then
		row_git_status="${row_git_status}●${git_behind} "
		row_git_status_display="${row_git_status_display}${PINK}↓${RESET}${git_behind} "
	fi

	row_git_status="$( printf '%s\n' "${row_git_status}" | sed 's/ $//' )"
	row_git_status_display="$( printf '%s\n' "${row_git_status_display}" | sed 's/ $//' )"

	row_time_icon=''
	row_time_data="$( date '+%r' )"
	row_time="${row_time_icon}${INNER_PADDING}${row_time_data}"
	row_time_display="${row_time_icon}${INNER_PADDING}${SUBTEXT}${row_time_data}${RESET}"

	row_mount_icon='󰋊'
	row_mount_data="$( df "${PWD}" | awk 'NR==2 { print $NF }' )"
	row_mount_space_data="$( df -h "${PWD}" | awk 'NR==2 { print $4 }' )"
	row_mount_space_percentage="$( df -h "${PWD}" | awk 'NR==2 { print $5 }' | tr -d '%' )"
	row_mount="${row_mount_icon}${INNER_PADDING}${row_mount_data}${row_mount_space_data} "
	row_mount_display="${row_mount_icon}${INNER_PADDING}${SAPPHIRE}${row_mount_data}${RESET} "
	
	if [ "${row_mount_space_percentage}" -gt 90 ]; then
		row_mount_display="${row_mount_display}${RED}${row_mount_space_data}${RESET}"
	elif [ "${row_mount_space_percentage}" -gt 70 ]; then
		row_mount_display="${row_mount_display}${YELLOW}${row_mount_space_data}${RESET}"
	else
		row_mount_display="${row_mount_display}${SUBTEXT}${row_mount_space_data}${RESET}"
	fi

	if command -v stat >/dev/null 2>&1; then
		directory_user="$( stat -c '%u' "${PWD}" || stat -f '%Su' "${PWD}" )"
		directory_group="$( stat -c '%g' "${PWD}" || stat -f '%Sg' "${PWD}" )"
		directory_perms="$( stat -c '%a' "${PWD}" || stat -f '%Sp' "${PWD}" )"

		row_directory_perms_icon=''
		row_directory_perms="${row_directory_perms_icon}${INNER_PADDING}${directory_perms}"
		row_directory_perms_display="${row_directory_perms_icon}${INNER_PADDING}${SUBTEXT}${directory_perms}${RESET}"

		if [ "${directory_user}" != "$( id -u )" ] || [ "${directory_group}" != "$( id -g )" ]; then
			row_directory_perms="${row_directory_perms} (${directory_user}:${directory_group})"
			if [ "${directory_user}" -eq 0 ]; then
				row_directory_perms_display="${row_directory_perms_display} (${MAUVE}${directory_user}${RESET}:${MAUVE}${directory_group}${RESET})"
			else
				row_directory_perms_display="${row_directory_perms_display} (${PEACH}${directory_user}${RESET}:${PEACH}${directory_group}${RESET})"
			fi
		fi
	fi

	case "${PWD}" in
		"${HOME}"*) row_directory_data="~${PWD#${HOME}}" ;;
		*) row_directory_data="${PWD}" ;;
	esac

	case "${row_mount_data}" in
		"${HOME}"*) row_mount_data="~${row_mount_data#${HOME}}" ;;
		*) row_mount_data="${row_mount_data}" ;;
	esac

	row_directory_icon=''
	row_directory="${row_directory_icon}${INNER_PADDING}${row_directory_data}"
	row_directory_display="${row_directory_icon}${INNER_PADDING}${BLUE}${row_directory_data}${RESET}"

	row_status_icon='✘'
	row_status_data="${exit_code}"
	row_status="${row_status_icon}${INNER_PADDING}${row_status_data}"
	row_status_display="${row_status_icon}${INNER_PADDING}${RED}${row_status_data}${RESET}"

	max_row_width="$(
		printf '%s %s %s %s %s %s %s %s %s %s %s\n' \
			"${#row_username}" \
			"${#row_hostname}" \
			"${#row_os}" \
			"${#row_shell}" \
			"${#row_motd}" \
			"${#row_git_branch}" \
			"${#row_git_status}" \
			"${#row_time}" \
			"${#row_mount}" \
			"${#row_directory_perms}" \
			"${#row_directory}" \
			"${#row_status}" | tr ' ' '\n' | sort -rn | head -n 1
	)"
	
	total_row_width="$(( "${max_row_width}" + 2 * "${OUTER_PADDING_LENGTH}" ))"
	row_horizontal="$( printf '%.0s─' $( seq 1 "${total_row_width}" ) )"

	TOP_ROW="${TEXT}┌${row_horizontal}┐${RESET}\n"
	MIDDLE_ROW="${TEXT}├${row_horizontal}┤${RESET}\n"
	END_ROW="${TEXT}├${row_horizontal}┘${RESET}\n"
	PROMPT_ROW="${TEXT}╰─◆─▶${RESET} "

	ROW_START="${TEXT}│${RESET}${OUTER_PADDING}"
	row_fill() {
		printf "%$(( "${max_row_width}" - "${1}" ))s"
	}
	ROW_END="${OUTER_PADDING}${TEXT}│${RESET}\n"

	PS0=''
	PS1=''

	PS1="${PS1}${TOP_ROW}"
	PS1="${PS1}${ROW_START}${row_username_display}$( row_fill "${#row_username}" )${ROW_END}"
	PS1="${PS1}${ROW_START}${row_hostname_display}$( row_fill "${#row_hostname}" )${ROW_END}"
	PS1="${PS1}${ROW_START}${row_os_display}$( row_fill "${#row_os}" )${ROW_END}"
	PS1="${PS1}${ROW_START}${row_shell_display}$( row_fill "${#row_shell}" )${ROW_END}"

	if [ -z "${MOTD_DISPLAYED}" ]; then
		MOTD_DISPLAYED='true'

		PS1="${PS1}${MIDDLE_ROW}"
		PS1="${PS1}${ROW_START}${row_motd_display}$( row_fill "${#row_motd}" )${ROW_END}"
	fi

	# git
	if [ -n "${row_git_branch_data}" ] && $( git status >/dev/null 2>&1 ); then
		PS1="${PS1}${MIDDLE_ROW}"
		PS1="${PS1}${ROW_START}${row_git_branch_display}$( row_fill "${#row_git_branch}" )${ROW_END}"
		if [ "${git_all}" -gt 0 ]; then
			PS1="${PS1}${ROW_START}${row_git_status_display}$( row_fill "${#row_git_status}" )${ROW_END}"
		fi
	fi

	PS1="${PS1}${MIDDLE_ROW}"
	PS1="${PS1}${ROW_START}${row_time_display}$( row_fill "${#row_time}" )${ROW_END}"
	PS1="${PS1}${ROW_START}${row_mount_display}$( row_fill "${#row_mount}" )${ROW_END}"
	
	if command -v stat >/dev/null 2>&1; then
		PS1="${PS1}${ROW_START}${row_directory_perms_display}$( row_fill "${#row_directory_perms}" )${ROW_END}"
	fi
	PS1="${PS1}${ROW_START}${row_directory_display}$( row_fill "${#row_directory}" )${ROW_END}"

	if [ "${exit_code}" -ne 0 ]; then
		PS1="${PS1}${MIDDLE_ROW}"
		PS1="${PS1}${ROW_START}${row_status_display}$( row_fill "${#row_status}" )${ROW_END}"
	fi

	PS1="${PS1}${END_ROW}"
	PS1="${PS1}${PROMPT_ROW}"

	PS2="  │ "

	unset row_fill
}
PROMPT_COMMAND='build_prompt'
