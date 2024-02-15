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
