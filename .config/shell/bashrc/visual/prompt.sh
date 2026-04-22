# Prompt (Catppuccin-ish)
PINK='\[\e[38;2;245;194;231m\]'
BLUE='\[\e[38;2;137;180;250m\]'
GREEN='\[\e[38;2;166;227;161m\]'
GRAY='\[\e[38;2;108;112;134m\]'
RESET='\[\e[0m\]'
RED='\[\e[31m\]'

PS1="$( if [ "${?}" -ne 0 ]; then echo "${RED}✗ ${RESET}"; fi )"
PS1="${PS1}${PINK}\u${GRAY}@${BLUE}\h ${GREEN}\w ${GRAY}❯ ${RESET}"

unset PINK BLUE GREEN GRAY RESET RED
