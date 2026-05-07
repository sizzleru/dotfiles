# Prompt (Catppuccin-ish)
PINK='\[\e[38;2;245;194;231m\]'
BLUE='\[\e[38;2;137;180;250m\]'
GREEN='\[\e[38;2;166;227;161m\]'
GRAY='\[\e[38;2;108;112;134m\]'
RESET='\[\e[0m\]'
RED='\[\e[31m\]'

EXITCODE="$( if [ "${?}" -ne 0 ]; then echo "${RED}✗ ${RESET}"; fi )"
SEPERATOR="$( if [ "${TERM}" == 'linux' ]; then echo '>'; else echo '❯'; fi )"

PS1="${EXITCODE}${PINK}\u${GRAY}@${BLUE}\h ${GREEN}\w ${GRAY}${SEPERATOR} ${RESET}"

unset PINK BLUE GREEN GRAY RESET RED EXITCODE SEPERATOR
