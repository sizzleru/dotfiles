#!/bin/bash

# If connection is available to moon
if [[ ! $(tailscale status | grep 'moon.*offline' | wc -l) -eq 1 ]]; then
	cat /home/sizzleru/.config/tree/sshfs_mounts.txt | awk '{ print $3 }' | xargs -n 1 mkdir -pv
	cat /home/sizzleru/.config/tree/sshfs_mounts.txt | awk '{ print $1":"$2" "$3 }' | xargs -n 2 sshfs
fi
