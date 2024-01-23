case $(hostnamectl --static) in
	tree)
		HOSTNAME_LOGO=🌳
		;;
	
	moon)
		HOSTNAME_LOGO=🌕
		;;
	
	academy)
		HOSTNAME_LOGO=🏫
		;;
	
	daisy)
		HOSTNAME_LOGO=🌼
		;;

	forest)
		HOSTNAME_LOGO=🌲
		;;

	city)
		HOSTNAME_LOGO=🏙️
		;;

	workshop)
		HOSTNAME_LOGO=🛠️
		;;

	*)
		HOSTNAME_LOGO=❓
		;;
esac

case $(whoami) in
	sizzleru)
		USER_COLOR=33
		;;
	
	kagi)
		USER_COLOR=46
		;;
	
	root)
		USER_COLOR=31
		;;
	
	*)
		USER_COLOR=30
		;;
esac

exit-ps1() {
	[[ $? -eq 0 ]] && (echo '\e[1;32m✓\e[0m') || echo '\e[1;31m✗ ($?)\e[0m'
	exit $?
}

git-ps1() {
[[ $(git rev-parse --abbrev-ref HEAD) ]] &> /dev/null && echo "・ ($(git rev-parse --abbrev-ref HEAD), $(git status --short | wc -l) unstaged, $(git diff --cached --numstat | wc -l) staged, $(git log --branches --not --remotes | wc -l) unpushed)"
}

jobs-ps1() {
	[[ $(jobs | wc -l) -gt 0 ]] && echo "・⚙ ($(jobs | wc -l))" 
}

export PS0="\n  \e[1;35m==>>\e[0m  "
export-ps1() {
	export PS1="\n\n\d @ \t <| $(exit-ps1)$(jobs-ps1)$(git-ps1) |>\n\e[1;${USER_COLOR}m\u\e[0m ($HOSTNAME_LOGO) : $(echo ${PWD/\// } | sed -r 's?/?\\e[2m|>\\e[0m?g')\n -> "
}
export PS2=" ===> "


unset $HOSTNAME_LOGO
unset $USER_COLOR
