# activate ssh-agent (or create if necessary)
if [[ -f "${HOME}/.ssh/agent" ]]; then eval "$(< "${HOME}/.ssh/agent")" &> /dev/null; fi
if [[ ! $(ssh-add -l 2> /dev/null) ]]; then
	(umask 066; ssh-agent > "${HOME}/.ssh/agent")
	eval "$(<${HOME}/.ssh/agent)" > /dev/null
	ssh-add "${HOME}/.ssh/sizzleru" &> /dev/null
fi

function sshfs-mount() {
	if [[ ! $(tailscale status | grep 'moon.*offline' | wc -l) -eq 1 ]]; then
		cat /home/sizzleru/.config/tree/sshfs_mounts.txt | awk '{ print $3 }' | xargs -n 1 mkdir -pv
		cat /home/sizzleru/.config/tree/sshfs_mounts.txt | awk '{ print $1":"$2" "$3 }' | xargs -n 2 sshfs
	fi
}

function sshfs-umount() {
	cat /home/sizzleru/.config/tree/sshfs_mounts.txt | awk '{ print $3 }' | xargs -n 1 sudo umount
}

function tailscale-ssh()  {
	tailscale status | grep '^[0-9]' | grep -v disconnected | awk 'FNR > 1 { print $2 }' | fzf --preview 'tailscale-host-info {}' --bind 'enter:execute(kitten ssh {})'
}
