#!/bin/bash

if [[ "${#}" -ne 0 ]]; then
    echo 'Requires no parameters' && exit 1
fi

MONITOR="$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused == true)' | jq -s '.[0].output')"

#i3-msg move container to workspace "$(i3-msg -t get_outputs | jq -r '.[] | select(.name == "'$MONITOR'") | .current_workspace')"

VISIBLE_MONITOR="$(i3-msg -t get_workspaces | jq -r '(.[] | select(.output == "'${MONITOR}'") | select(.visible == true)).num')"
NEXT_MONITOR="$(i3-msg -t get_workspaces | jq -r '.[] | select(.output == "'${MONITOR}'") | select(.visible == false) | select(.num <= '${VISIBLE_MONITOR}')' | jq -s '.[-1].num')"
LAST_MONITOR="$(i3-msg -t get_workspaces | jq -r '.[] | select(.output == "'${MONITOR}'")' | jq -s '.[-1].num')"

i3-msg workspace "$([[ "${NEXT_MONITOR}" != null ]] && echo "${NEXT_MONITOR}" || echo "${LAST_MONITOR}")"
