#!/bin/bash

alias remove='trash'

function ll() {
    path="${1%/}"
    if [[ -n "$(ls -A $path 2>/dev/null)" ]]; then
        for f in "${path}"/*; do
            file_stat=$(stat -c '%U:%G?(%A %a)' "$f")
            if [[ -L "$f" ]]; then
                printf "%s?%s?->?%s\n" "$file_stat" "$(basename "$f")" "$(readlink "$f")"
            else
                printf "%s?%s\n" "${file_stat}" "$(basename "$f")"
            fi
        done | column -ts ':' -R 1 -o ':' | column -ts '?' -o ' '
    else
        echo ''
    fi
}

function l() {
    if [[ $# -gt 0 ]]; then
        for dir in $@; do
            echo "${dir}/:"
            ll "${dir}"
            echo ""
        done
    else
        ll .
    fi
}


function copy() {

	if [[ ${#} -lt 2 ]]; then
		echo 'there must be at least 2 parameters' && return 1
	fi

	if [[ -d ${@: -1} ]]; then
		tar -cf - ${@:1:$#-1} | pv -s $(du -b ${@:1:$#-1} | awk '{ print $1 }' | paste -sd+ | bc) | tar -xf - -C ${@: -1}
	else

		if [[ -f $(realpath ${@: -1}) ]]; then
			echo 'file already exists in that location' && return 1
		else
			echo 'file does not exit, but operation is not supported yet'
			echo 'resorting back to mv...'
			mv ${@}
		fi
fi
}

function move() {
	rsync -aP "${@}" && rm -rf "${@:1:$#-1}"
}

function f() {
    fc -s $(history | fzf -e | awk '{ print $1 }')
}

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
