[[ -f $HOME/.bashrc ]] && source $HOME/.bashrc # invoke bashrc

REAL_PATH=$(dirname $(realpath $HOME/.profile)) # work in terms of the target file in the symbolic link
for profile_file in $(ls -r $REAL_PATH/profile); do
	set -a # mark all variables in the following files as exportable
	source $REAL_PATH/profile/$profile_file
	set +a # export all the variables for subshells
done

unset profile_file
unset $REAL_PATH
