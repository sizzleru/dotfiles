# env vars
$env:EDITOR = "vim"
$env:VISUAL = $env:EDITOR

# vi mode
Set-PSReadLineOption -EditMode Vi

# git
function gitbh {
	cd "${HOME}"
	git bh ${args}[0]
	git unstage
	git restore .gitignore README.md
}


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

# prompt
function prompt {

	# padding
	$INNER_PADDING_LENGTH = 2
	$OUTER_PADDING_LENGTH = 1
	$INNER_PADDING = " " * ${INNER_PADDING_LENGTH}
	$OUTER_PADDING = " " * ${OUTER_PADDING_LENGTH}

	$ICON_PADDING = " "

	# rows
	$row_username_icon = "󰀄"
	$row_username_data = ${env:USERNAME}
	$row_username = ${row_username_icon} + ${INNER_PADDING} + ${row_username_data}
	$row_username_display = ${row_username_icon} + ${INNER_PADDING} + ${MAUVE} + ${row_username_data} + ${RESET} + ${ICON_PADDING}

	$row_hostname_icon = ""
	$row_hostname_data = ${env:COMPUTERNAME}.ToLower()
	$row_hostname = ${row_hostname_icon} + ${INNER_PADDING} + ${row_hostname_data}
	$row_hostname_display = ${row_hostname_icon} + ${INNER_PADDING} + ${BLUE} + ${row_hostname_data} + ${RESET}

	$row_os_icon = ""
	$row_os_data = ${env:OS}
	$row_os = ${row_os_icon} + ${INNER_PADDING} + ${row_os_data}
	$row_os_display = ${row_os_icon} + ${INNER_PADDING} + ${SAPPHIRE} + ${row_os_data} + ${RESET}

	$row_git_branch_icon = ""
	$row_git_branch_data = git branch --show-current 2>$null
	$row_git_branch = ${row_git_branch_icon} + ${INNER_PADDING} + ${row_git_branch_data}
	$row_git_branch_display = ${row_git_branch_icon} + ${INNER_PADDING} + ${PINK} + ${row_git_branch_data} + ${RESET}

	$git_staged = [int]( git diff --cached --name-only 2>$null | Measure-Object -Line).Lines
	$git_unstaged = ( git diff --name-only 2>$null | Measure-Object -Line).Lines
	$git_untracked = ( git ls-files --others --exclude-standard 2>$null | Measure-Object -Line).Lines
	$git_ahead = ( git rev-list "@{u}..HEAD" 2>$null | Measure-Object -Line).Lines
	$git_behind = ( git rev-list "HEAD..@{u}" 2>$null | Measure-Object -Line).Lines
	$git_all = ${git_staged} + ${git_unstaged} + ${git_untracked} + ${git_ahead} + ${git_behind}

	$row_git_status_icon = ""
	$row_git_status = ${row_git_status_icon} + ${inner_padding}
	$row_git_status_display = ${row_git_status_icon} + ${inner_padding}

	if ( ${git_staged} -gt 0 ) {
		$row_git_status += "●" + ${git_staged}
		$row_git_status_display += ${GREEN} + "●" + ${RESET} + ${git_staged}
	}

	if ( ${git_unstaged} -gt 0 ) {
		$row_git_status += "●" + ${git_unstaged}
		$row_git_status_display += ${YELLOW} + "●" + ${RESET} + ${git_unstaged}
	}

	if ( ${git_untracked} -gt 0 ) {
		$row_git_status += "●" + ${git_untracked}
		$row_git_status_display += ${RED} + "●" + ${RESET} + ${git_untracked}
	}

	if ( ${git_ahead} -gt 0 ) {
		$row_git_status += "↑" + ${git_ahead}
		$row_git_status_display += ${BLUE} + "↑" + ${RESET} + ${git_ahead}
	}

	if ( ${git_behind} -gt 0 ) {
		$row_git_status += "↓" + ${git_behind}
		$row_git_status_display += ${BLUE} + "↓" + ${RESET} + ${git_behind}
	}

	$row_time_icon = ""
	$row_time_data = Get-Date -Format "hh:mm:ss tt"
	$row_time = ${row_time_icon} + ${INNER_PADDING} + ${row_time_data}
	$row_time_display = ${row_time_icon} + ${INNER_PADDING} + ${OVERLAY} + ${row_time_data} + ${RESET}

	$row_mount_icon = "󰋊"
	$row_mount_data = (Get-Location).Drive.Name
	$row_mount_space = [math]::Round( (Get-PSDrive $row_mount_data).Free / 1GB, 1 )
	$row_mount = ${row_mount_icon} + ${INNER_PADDING} + ${row_mount_data} + ":/ " + $row_mount_space + "G"
	$row_mount_display = ${row_mount_icon} + ${INNER_PADDING} + ${SAPPHIRE} + ${row_mount_data} + ${RESET} + ":/ " + $row_mount_space + "G" + ${ICON_PADDING}

	$row_directory_icon = ""
	$row_directory_data = $PWD.Path.Replace('\', '/') -replace "^$([regex]::Escape($HOME.Replace('\', '/')))", "~"
	$row_directory = ${row_directory_icon} + ${INNER_PADDING} + ${row_directory_data}
	$row_directory_display = ${row_directory_icon} + ${INNER_PADDING} + ${BLUE} + ${row_directory_data} + ${RESET}

	$row_status_icon = "✘"
	if ( ${exit_code} -ne 0 ) {
		$row_status_data = "failure"
	} else {
		$row_status_data = ${exit_code}
	}
	$row_status = ${row_status_icon} + ${INNER_PADDING} + ${exit_code}
	$row_status_display = ${row_status_icon} + ${INNER_PADDING} + ${RED} + ${exit_code} + ${RESET}

	# table
	$max_row_width = (
		${row_username},
		${row_hostname},
		${row_os},
		${row_git_branch},
		${row_git_status},
		${row_time},
		${row_directory},
		${row_mount}
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
	Write-Host ( ${ROW_START} + ${row_os_display} + ( RowFill ${row_os} ) + ${ROW_END} )

	if ( ( git rev-parse --is-inside-work-tree 2>$null ) -eq "true" ) {
		Write-Host ${MIDDLE_ROW}
		Write-Host ( ${ROW_START} + ${row_git_branch_display} + ( RowFill ${row_git_branch} ) + ${ROW_END} )
		Write-Host ( ${ROW_START} + ${row_git_status_display} + ( RowFill ${row_git_status} ) + ${ROW_END} )
	}

	Write-Host ${MIDDLE_ROW}
	Write-Host ( ${ROW_START} + ${row_time_display} + ( RowFill ${row_time} ) + ${ROW_END} )
	Write-Host ( ${ROW_START} + ${row_mount_display} + ( RowFill ${row_mount} ) + ${ROW_END} )
	Write-Host ( ${ROW_START} + ${row_directory_display} + ( RowFill ${row_directory} ) + ${ROW_END} )

	Write-Host ${END_ROW}
	return "╰─◆─▶ "
}
