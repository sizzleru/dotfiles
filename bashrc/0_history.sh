HISTIGNORE="[ \t]*:cd:ls:exit:history" # Ignore these commands on history, start the command with space or tab to ignore in the history
HISTCONTROL=ignoreboth:erasedups
PROMPT_COMMAND="export-ps1;history -n; history -w; history -c; history -r"
