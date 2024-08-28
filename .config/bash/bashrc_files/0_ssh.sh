#if [[ "$(ps -ef | grep 'ssh-agent' | grep -v 'grep' | wc -l)" -eq 0 ]]; then
eval $(ssh-agent -s) &> /dev/null
ssh-add "${HOME}/.ssh/sizzleru" &> /dev/null
#fi
