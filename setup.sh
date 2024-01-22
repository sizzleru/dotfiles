#!/bin/bash

dirname $0 || exit 1 # Check if running bash

# Request permission to replace $HOME/.bashrc with a symbolic link
read -rp "This will replace your \$HOME/.bashrc and other dotfiles in \$HOME, are you sure? [y/N] " response
if [[ ! $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
	exit 1 
fi

# Create a symbolic link to the repo's bashrc
if [[ ! -L $PWD/.bashrc ]] || [[ ! -e $PWD/.bashrc ]]; then
	ln -fs $PWD/.bashrc $HOME/.bashrc 
fi

# Create a symbolic link to the repo's inputrc
if [[ ! -L $PWD/.inputrc ]] || [[ ! -e $PWD/.inputrc ]]; then
	ln -fs $PWD/.inputrc $HOME/.inputrc
fi

# Create a symbolic to the repo's bash_profile
if [[ ! -L $PWD/.profile ]] || [[ ! -e $PWD/.profile ]]; then
	ln -fs $PWD/.profile $HOME/.profile
fi

# Copy over configs for applications
if [[ ! -d $HOME/.config/ ]]; then
	mkdir $HOME/.config/
fi

for app in $(ls $PWD/.config/); do
	if [[ ! -d $HOME/.config/$app ]]; then
		mkdir $HOME/.config/$app
	fi
	for app_file in $(ls $PWD/.config/$app/); do
		if [[ ! -L $PWD/.config/$app/$app_file ]] || [[ ! -e $PWD/.config/$app/$app_file ]]; then
			ln -fs $PWD/.config/$app/$app_file $HOME/.config/$app/$app_file
		fi
	done
done

unset $response
unset $app
unset $app_file
