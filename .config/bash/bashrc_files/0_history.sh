HISTFILE="${XDG_STATE_HOME}/bash/history"
HISTIGNORE="[ \t]*:cd:ls:exit:history:.*ranger:lazy*" # Ignore these commands on history, start the command with space or tab to ignore in the history
HISTSIZE=-1 # Unlimited
HISTCONTROL='ignoreboth:erasedups' # Remove duplicate commands for less clutter
