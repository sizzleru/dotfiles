#!/bin/bash
echo "$(dirname "$0")" || exit 5
git pull

function setup() {
	ls -Ap src | grep -v / | while read -r file; do
		if [[ -L ~/$file || -f ~/$file ]]; then
			rm ~/$file
		fi
		ln -s $(pwd)/src/$file ~/$file
	done
}

setup
unset setup
source ~/.bashrc
