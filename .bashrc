[[ $- != *i* ]] && return # Check if running interactively

REAL_PATH=$(dirname $(realpath .bashrc)) # Work in terms of the target file in the symbolic link
ls -r $REAL_PATH/bashrc | while read bashrc_files; do
	source $REAL_PATH/bashrc/$bashrc_files
done
