# ~/.local/bin
if [ -d "${HOME}/.local/bin" ]; then
	case ":${PATH}:" in
		*":${HOME}/.local/bin:"*) ;;
		*) export PATH="${HOME}/.local/bin:${PATH}" ;;
	esac
fi

# /usr/sbin
if [ -d '/usr/sbin' ]; then
	case ":${PATH}:" in
		*':/usr/sbin:'*) ;;
		*) export PATH="/usr/sbin:${PATH}" ;;
	esac
fi

# ~/.ghcup/bin
if [ -d "${HOME}/.ghcup" ]; then
	case ":${PATH}:" in
		*":${HOME}/.ghcup/bin:"*) ;;
		*) export PATH="${HOME}/.ghcup/bin:${PATH}" ;;
	esac
fi
