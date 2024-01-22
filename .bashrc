[[ $- != *i* ]] && return # Check if running interactively

ls -r $PWD/bashrc | while read bashrc_files; do
	source $bashrc_files
done
