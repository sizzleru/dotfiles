#!/bin/bash

dirname $0 || exit 1 # Check if running bash

# Request permission to replace $HOME/.bashrc with a symbolic link
read -rp "This will replace your \$HOME/.bashrc and other dotfiles in \$HOME, are you sure? [y/N] " response
if [[ ! $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
	exit 1 
fi

unset $response

# Create a symbolic link to the repo's bashrc
if [[ ! -L $PWD/.bashrc ]] || [[ ! -e $PWD/.bashrc ]]; then
	ln -fs $PWD/.bashrc $HOME/.bashrc 
fi

# Create a symbolic link to the repo's inputrc
if [[ ! -L $PWD/.inputrc ]] || [[ ! -e $PWD/.inputrc ]]; then
	ln -fs $PWD/.inputrc $HOME/.inputrc
fi
