# env vars
$env:EDITOR = "vim"
$env:VISUAL = $env:EDITOR

# vi mode
Set-PSReadLineOption -EditMode Vi

# prompt
function prompt {

	# catppuccin mocha
	$ROSEWATER = "`e[38;2;245;224;220m"
	$FLAMINGO = "`e[38;2;242;205;205m"
	$PINK = "`e[38;2;245;194;231m"
	$MAUVE = "`e[38;2;203;166;247m"
	$RED = "`e[38;2;243;139;168m"
	$MAROON = "`e[38;2;235;160;172m"
	$PEACH = "`e[38;2;250;179;135m"
	$YELLOW = "`e[38;2;249;226;175m"
	$GREEN = "`e[38;2;166;227;161m"
	$TEAL = "`e[38;2;148;226;213m"
	$SKY = "`e[38;2;137;220;235m"
	$SAPPHIRE = "`e[38;2;116;199;236m"
	$BLUE = "`e[38;2;137;180;250m"
	$LAVENDER = "`e[38;2;180;190;254m"
	# neutrals
	$TEXT = "`e[38;2;205;214;244m"
	$SUBTEXT = "`e[38;2;166;173;200m"
	$OVERLAY = "`e[38;2;108;112;134m"
	$GRAY = "`e[38;2;88;91;112m"
	# reset
	$RESET = "`e[0m"

	# padding
	$INNER_PADDING_LENGTH = 2
	$OUTER_PADDING_LENGTH = 1
	$INNER_PADDING = " " * ${INNER_PADDING_LENGTH}
	$OUTER_PADDING = " " * ${OUTER_PADDING_LENGTH}

	# rows
	$row_username_data = ${env:USERNAME}
	$row_username = "x" + ${INNER_PADDING} + ${row_username_data}
	$row_username_display = "󰀄" + ${INNER_PADDING} + ${MAUVE} + ${row_username_data} + ${RESET}

	$row_hostname_data = ${env:COMPUTERNAME}.ToLower()
	$row_hostname = "" + ${INNER_PADDING} + ${row_hostname_data}
	$row_hostname_display = "" + ${INNER_PADDING} + ${BLUE} + ${row_hostname_data} + ${RESET}

	$row_os_data = ${env:OS}
	$row_os = "" + ${INNER_PADDING} + ${row_os_data}
	$row_os_display = "" + ${INNER_PADDING} + ${SAPPHIRE} + ${row_os_data} + ${RESET}

	$row_git_branch_data = git branch --show-current 2>$null
	$row_git_branch = "" + ${INNER_PADDING} + ${row_git_branch_data}
	$row_git_branch_display = "" + ${INNER_PADDING} + ${PINK} + ${row_git_branch_data} + ${RESET}


		#git_staged = "$( git diff --cached --name-only 2>/dev/null | wc -l | tr -d ' ' )"
		#git_unstaged = "$( git diff --name-only 2>/dev/null | wc -l | tr -d ' ' )"
		#git_untracked = "$( git ls-files --others --exclude-standard 2>/dev/null | wc -l | tr -d ' ' )"
		#git_ahead = "$( git rev-list @{u}..HEAD 2>/dev/null | wc -l | tr -d ' ' )"
		#git_behind = "$( git rev-list HEAD..@{u} 2>/dev/null | wc -l | tr -d ' ' )"
		#git_all = "$(( "${staged}" + "${git_unstaged}" + "${git_untracked}" + "${git_ahead}" + "${git_behind}" ))"

        #row_git_status="${INNER_PADDING}"
        #row_git_status_display="${INNER_PADDING}"
        #if [ "${git_staged}" -gt 0 ]; then
        #        row_git_status="${row_git_status}●${git_staged} "
        #        row_git_status_display="${row_git_status_display}${GREEN}●${RESET}${git_staged} "
        #fi

        #if [ "${git_unstaged}" -gt 0 ]; then
        #        row_git_status="${row_git_status}●${git_unstaged} "
        #        row_git_status_display="${row_git_status_display}${YELLOW}●${RESET}${git_unstaged} "
        #fi

        #if [ "${git_untracked}" -gt 0 ]; then
        #        row_git_status="${row_git_status}●${git_untracked} "
        #        row_git_status_display="${row_git_status_display}${RED}●${RESET}${git_untracked} "
        #fi

        #if [ "${git_ahead}" -gt 0 ]; then
        #        row_git_status="${row_git_status}●${git_ahead} "
        #        row_git_status_display="${row_git_status_display}${BLUE}↑${RESET}${git_ahead} "
        #fi

        #if [ "${git_behind}" -gt 0 ]; then
        #        row_git_status="${row_git_status}●${git_behind} "
        #        row_git_status_display="${row_git_status_display}${PINK}↓${RESET}${git_behind} "
        #fi

        #row_git_status="$( printf '%s\n' "${row_git_status}" | sed 's/ $//' )"
        #row_git_status_display="$( printf '%s\n' "${row_git_status_display}" | sed 's/ $//' )"

	$row_time_data = Get-Date -Format "hh:mm:ss tt"
	$row_time = "" + ${INNER_PADDING} + ${row_time_data}
	$row_time_display = "" + ${INNER_PADDING} + ${OVERLAY} + ${row_time_data} + ${RESET}

        #row_mount_data="$( df "${PWD}" | awk 'NR==2 { print $NF }' )"
        #row_mount="󰋊${INNER_PADDING}${row_mount_data}"
        #row_mount_display="󰋊${INNER_PADDING}${SAPPHIRE}${row_mount_data}${RESET}"

        #if command -v stat >/dev/null 2>&1; then
        #        directory_user="$( stat -c '%u' "${PWD}" || stat -f '%Su' "${PWD}" )"
        #        directory_group="$( stat -c '%g' "${PWD}" || stat -f '%Sg' "${PWD}" )"
        #        directory_perms="$( stat -c '%a' "${PWD}" || stat -f '%Sp' "${PWD}" )"

        #        row_directory_perms="󰈆${INNER_PADDING}${directory_perms}"
        #        row_directory_perms_display="󰈆${INNER_PADDING}${OVERLAY}${directory_perms}${RESET}"

        #        if [ "${directory_user}" != "$( id -u )" ] || [ "${directory_group}" != "$( id -g )" ]; then
        #                row_directory_perms="${row_directory_perms} (${directory_user}:${directory_group})"
        #                if [ "${directory_user}" -eq 0 ]; then
        #                        row_directory_perms_display="${row_directory_perms_display} (${MAUVE}${directory_user}${RESET}:${MAUVE}${directory_group}${RESET})"
        #                else
        #                        row_directory_perms_display="${row_directory_perms_display} (${PEACH}${directory_user}${RESET}:${PEACH}${directory_group}${RESET})"
        #                fi
        #        fi
        #fi

	$row_directory_data = $PWD.Path.Replace('\', '/') -replace "^$([regex]::Escape($HOME.Replace('\', '/')))", "~"
	$row_directory = "" + ${INNER_PADDING} + ${row_directory_data}
	$row_directory_display = "" + ${INNER_PADDING} + ${BLUE} + ${row_directory_data} + ${RESET}

        #row_status_data="${exit_code}"
        #row_status="󰈆${INNER_PADDING}${row_status_data}"
        #row_status_display="󰈆${INNER_PADDING}"
        #if [ "${row_status_data}" -eq 0 ]; then
        #        row_status_display="${row_status_display}${GREEN}${row_status_data}${RESET}"
        #else
        #        row_status_display="${row_status_display}${RED}${row_status_data}${RESET}"
        #fi

	# table
	$max_row_width = (
		${row_username},
		${row_hostname},
		${row_os},
		${row_git_branch},
		${row_time},
		${row_directory}
		| Measure-Object -Property Length -Maximum
	).Maximum

	$total_row_width = ${max_row_width} + 2 * ${OUTER_PADDING_LENGTH}
	$TOP_ROW = "┌" + ( "─" * ${total_row_width} ) + "┐"
	$MIDDLE_ROW = "├" + ( "─" * ${total_row_width} ) + "┤"
	$END_ROW = "├" + ( "─" * ${total_row_width} ) + "┘"

	$ROW_START = ${TEXT} + "│" + ${RESET} + ${OUTER_PADDING}
	function RowFill {
		param( ${row} )
		" " * ( ${max_row_width} - ${row}.Length )
	
	}
	$ROW_END = ${OUTER_PADDING} + "│"

	Write-Host ${TOP_ROW}
	Write-Host ( ${ROW_START} + ${row_username_display} + ( RowFill ${row_username} ) + ${ROW_END} )
	Write-Host ( ${ROW_START} + ${row_hostname_display} + ( RowFill ${row_hostname} ) + ${ROW_END} )

	Write-Host ${MIDDLE_ROW}
	Write-Host ( ${ROW_START} + ${row_os_display} + ( RowFill ${row_os} ) + ${ROW_END} )

	if ( ( git rev-parse --is-inside-work-tree 2>$null ) -eq "true" ) {
		Write-Host ${MIDDLE_ROW}
		Write-Host ( ${ROW_START} + ${row_git_branch_display} + ( RowFill ${row_git_branch} ) + ${ROW_END} )
	}

	Write-Host ${MIDDLE_ROW}
	Write-Host ( ${ROW_START} + ${row_time_display} + ( RowFill ${row_time} ) + ${ROW_END} )
	Write-Host ( ${ROW_START} + ${row_directory_display} + ( RowFill ${row_directory} ) + ${ROW_END} )

	Write-Host ${END_ROW}

	return "╰─◆─▶ "
}

# git
function gitbh {
	cd "${HOME}"
	git bh ${args}[0]
	git unstage
	git restore .gitignore README.md
}
