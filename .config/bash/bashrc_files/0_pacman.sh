function app-search() {
	yay -Slq | fzf --preview 'yay -Si {}' --bind 'enter:execute(if [[ $(yay -Q {} 2> /dev/null) ]]; then yay -Rns {}; else yay -S {}; fi)'
}
