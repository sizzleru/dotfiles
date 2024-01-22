#!/bin/bash

dirname $0 || exit 1 # Check if running bash

# Request permission to replace $HOME/.bashrc with a symbolic link
read -rp "This will replace your \$HOME/.bashrc, are you sure? [y/N] " response
if [[ ! $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
	exit 1 
fi

# Create a symbolic link to the repo's bashrc
if [[ ! -L $PWD/.bashrc ]] || [[ ! -e $PWD/.bashrc ]]; then
	ln -fs $HOME/.bashrc $PWD/.bashrc
fi
