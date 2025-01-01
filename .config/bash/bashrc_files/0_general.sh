alias bashrc="source ${XDG_CONFIG_HOME}/bash/bashrc"
alias profile="source ${XDG_CONFIG_HOME}/bash/profile"
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

function sshfs_umount() {
	cat /home/sizzleru/.config/tree/sshfs_mounts.txt | awk '{ print $3 }' | xargs -n 1 sudo umount
}

function shutdown() {
	sshfs_umount
	poweroff
}

function restart() {
	sshfs_umount
	reboot
}

function logout() {
	i3-msg exit
}

function tailscale-ssh()  {
	tailscale status | grep '^[0-9]' | grep -v disconnected | awk 'FNR > 1 { print $2 }' | fzf --preview 'tailscale-host-info {}' --bind 'enter:execute(kitten ssh {})'
}

alias remove='gio trash'
alias dcu='sudo docker compose up --build --detach --remove-orphans'
