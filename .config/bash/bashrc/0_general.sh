alias bashrc="source $HOME/.bashrc"
alias profile="source $HOME/.profile"
alias v=$EDITOR

function l() {
    for f in *; do
        file_stat=$(stat -c '%U:%G?(%A %a)?%n' "$f")
        if [[ -L "$f" ]]; then
            printf "%s?->?%s\n" "$file_stat" "$(readlink $f)"
        else
            echo "$file_stat"
        fi
    done | column -ts ':' -R 1 -o ':' | column -ts '?' -o ' '
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

alias remove='gio trash'
