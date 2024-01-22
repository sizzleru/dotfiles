[[ -f $HOME/.bashrc ]] && source $HOME/.bashrc # invoke bashrc

REAL_PATH=$(dirname $(realpath $HOME/.bash_profile)) # work in terms of the target file in the symbolic link
for bash_profile_file in $(ls -r $REAL_PATH/bash_profile); do
	set -a # mark all variables in the following files as exportable
	source $REAL_PATH/bash_profile/$bash_profile_file
	set +a # export all the variables for subshells
done

unset bash_profile_file
unset $REAL_PATH
