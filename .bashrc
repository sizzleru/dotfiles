[[ $- != *i* ]] && return # Check if running interactively

REAL_PATH=$(dirname $(realpath $HOME/.bashrc)) # Work in terms of the target file in the symbolic link
for bashrc_file in $(ls -r $REAL_PATH/bashrc); do
	source $REAL_PATH/bashrc/$bashrc_file
done

unset $bashrc_file
unset $REAL_PATH
