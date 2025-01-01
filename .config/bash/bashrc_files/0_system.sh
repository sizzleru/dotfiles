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

alias poweroff='shutdown'
alias reboot='restart'
alias logoff='logout'
