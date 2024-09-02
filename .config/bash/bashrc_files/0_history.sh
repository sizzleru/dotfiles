HISTFILE="${XDG_STATE_HOME}/bash/history"
HISTIGNORE="[ \t]*:cd:ls:exit:history:.*ranger:lazy*" # Ignore these commands on history, start the command with space or tab to ignore in the history
HISTSIZE=-1 # Unlimited
HISTCONTROL='ignoreboth:erasedups' # Remove duplicate commands for less clutter
PROMPT_COMMAND="export-ps1; history -a;" # Used to update the bash prompt and update the history

#; history -n; history -w; history -c; history -r" 
