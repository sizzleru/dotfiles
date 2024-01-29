case $(hostnamectl --static) in
    tree) HOSTNAME_LOGO=🌳 ;;
    moon) HOSTNAME_LOGO=🌕 ;;
    academy) HOSTNAME_LOGO=🏫 ;;
    daisy) HOSTNAME_LOGO=🌼 ;;
    forest) HOSTNAME_LOGO=🌲 ;;
    city) HOSTNAME_LOGO=🏙️ ;;
    workshop) HOSTNAME_LOGO=🛠️ ;;
    *) HOSTNAME_LOGO=❓ ;;
esac

case $(whoami) in
    sizzleru) USER_COLOR=yellow ;;
    kagi) USER_COLOR=cyan ;;
    root) USER_COLOR=red ;;
    *) USER_COLOR=default ;;
esac

function typeface() {
    case $1 in
        bold) echo bold ;;
        dim) echo dim ;;
        italic) echo sitm ;;
        underline) echo smul ;;
        blink) echo blink ;;
        reverse) echo rev ;;
        *) echo sgr0 ;;
    esac
}

function color() {
    case $1 in
        red) echo 1 ;;
        green) echo 2 ;;
        yellow) echo 3 ;;
        blue) echo 4 ;;
        purple) echo 5 ;;
        cyan) echo 6 ;;
        white) echo 7 ;;
        *) echo 30 ;;
    esac
}

function e() {
    echo "\001$(tput $(typeface $3))$(tput setaf $(color $2))$1$(tput sgr0)\002"
}

function exit-ps1() {
    [[ $? -eq 0 ]] && echo $(e ✓ green) || echo "$(e '✗ ($?)' red bold)"
    exit $?
}

function git-ps1() {
    [[ $(git rev-parse --abbrev-ref HEAD) ]] &>/dev/null && echo "・ @ $(e $(git rev-parse --abbrev-ref HEAD) cyan underline) ($(git status --short | wc -l) $(e unstaged red bold), $(git diff --cached --numstat | wc -l) $(e staged yellow bold), $(git cherry -v | wc -l) $(e unpushed green bold))"
}

function jobs-ps1() {
    [[ $(jobs | wc -l) -gt 0 ]] && echo "・⚙ ($(jobs | wc -l))"
}

export PS0="\n"
function export-ps1() {
    export PS1="\n\n\d @ \t <| $(exit-ps1)$(jobs-ps1)$(git-ps1) |>\n$(e '\u' ${USER_COLOR} bold) ($HOSTNAME_LOGO) $(e : white blink) $(echo ${PWD/\// } | sed -r 's?/?|>?g')\n -> "
}
export PS2=" ===> "
