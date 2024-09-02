alias bashrc="source ${XDG_CONFIG_HOME}/bash/bashrc"
alias profile="source ${XDG_CONFIG_HOME}/bash/bash_profile"
alias v="${EDITOR}"
alias python=python3

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

function s() {
    if [[ -z $(command -v kitten) ]]; then
        return 1
    else
        kitten ssh "sizzleru@$1"
    fi
}

function copy() {
    mkdir -p "$2" && tar -cf - -C "$1" ./ | bar -s $(du -sb "$1" | awk '{ print $1 }') | tar -xf - -C "$2"
}

function move() {
    copy "$1" "$2" && rm -r "$1"
}

function f() {
    eval $(history | fzf -e | sed -E "s/^ *[0-9]* *//g")
}

alias remove='gio trash'
alias dcu='sudo docker compose up --build --detach --remove-orphans'
