function shutdown() {
	local cmd='for mount_point in $( findmnt -rn -t fuse.sshfs -o TARGET ); do
		unit_file="$( systemd-escape -p --suffix=mount "${mount_point}" )"
		printf "Stopping %s...\n" "${unit_file}"
		sudo systemctl stop "${unit_file%.mount}.automount" "${unit_file}" 2>/dev/null
		mountpoint -q "${mount_point}" && sudo umount -l "${mount_point}"
	done
	sudo pkill -x sshfs'
	su --pty - kagirin -c "sudo sh -c '${cmd}'"
	#systemctl poweroff
}

function restart() {
	local cmd='for mount_point in $( findmnt -rn -t fuse.sshfs -o TARGET ); do
		unit_file="$( systemd-escape -p --suffix=mount "${mount_point}" )"
		printf "Stopping %s...\n" "${unit_file}"
		sudo systemctl stop "${unit_file%.mount}.automount" "${unit_file}" 2>/dev/null
		mountpoint -q "${mount_point}" && sudo umount -l "${mount_point}"
	done
	sudo pkill -x sshfs'
	su --pty - kagirin -c "sudo sh -c '${cmd}'"
	systemctl reboot
}
