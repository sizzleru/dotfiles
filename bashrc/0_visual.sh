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
		HOSTNAME_LOGO=🛠️ ;;
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

DIRECTORY=$(echo ${PWD/\// } | sed -r 's?/?\\e[2m|>\\e[0m?g')

export PS1="\n\d @ \t ($HOSTNAME_LOGO)\n\e[1;${USER_COLOR}m\u\e[0m : $DIRECTORY\n -> "
export PS2=" ===> "


unset $HOSTNAME_LOGO
unset $USER_COLOR
unset $DIRECTORY
