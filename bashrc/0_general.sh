alias bashrc="source $HOME/.bashrc"
alias profile="source $HOME/.profile"
alias v=$EDITOR

function l() {
    ls --color=always --si --hyperlink=always -AFhHlNq | awk '{print $1, $3, $4, $9}' | tail --lines=+2
}
