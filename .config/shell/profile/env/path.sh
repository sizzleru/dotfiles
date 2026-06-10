# ~/.local/bin
case ":${PATH}:" in
	*":${HOME}/.local/bin:"*) ;;
	*) export PATH="${HOME}/.local/bin:${PATH}" ;;
esac

# ~/.ghcup/bin
case ":${PATH}:" in
	*":${HOME}/.ghcup/bin:"*) ;;
	*) export PATH="${HOME}/.ghcup/bin:${PATH}" ;;
esac
