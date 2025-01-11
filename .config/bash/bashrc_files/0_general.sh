alias bashrc="source ${XDG_CONFIG_HOME}/bash/bashrc"
alias profile="source ${XDG_CONFIG_HOME}/bash/profile"
alias v="${EDITOR}"
alias python=python3
alias dcu='sudo docker compose up --build --detach --remove-orphans'

function s() {
    if [[ -z $(command -v kitten) ]]; then
        ssh "${1}"
    else
        kitten ssh "${1}"
    fi
}
