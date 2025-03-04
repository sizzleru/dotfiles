function shutdown() {
	ps -p $(pgrep -f sshfs) -o cmd | tail -n +2 | awk '{ print $3 }' | xargs sudo umount
	\poweroff
}

function restart() {
	ps -p $(pgrep -f sshfs) -o cmd | tail -n +2 | awk '{ print $3 }' | xargs sudo umount
	\reboot
}

function logout() {
	i3-msg exit
}

#alias poweroff='shutdown'
#alias reboot='restart'
#alias logoff='logout'
