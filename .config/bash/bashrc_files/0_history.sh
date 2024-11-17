HISTFILE="${XDG_STATE_HOME:-${HOME}/.local/state}/bash/history"
HISTIGNORE=' *' # Ignore these commands on history, start the command with space or tab to ignore in the history
HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S => "
HISTSIZE=-1 # Unlimited
HISTCONTROL='ignoredups:erasedups' # Remove duplicate commands for less clutter
