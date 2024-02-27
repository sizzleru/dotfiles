# XDG_RUNTIME_DIR=/run/user/$UID/ # Should be set by pam_systemd
XDG_CONFIG_HOME="${HOME}"/.config
XDG_CACHE_HOME="${HOME}"/.cache
XDG_DATA_HOME="${HOME}"/.local/share
XDG_STATE_HOME="${HOME}"/.local/state
XDG_DATA_DIRS=/usr/local/share:/usr/share
XDG_CONFIG_DIRS=/etc/xdg
XDG_BIN_HOME="${HOME}"/.local/bin

mkdir -p "${XDG_CONFIG_HOME}" "${XDG_CACHE_HOME}" "${XDG_DATA_HOME}" "${XDG_STATE_HOME}" "${XDG_BIN_HOME}"
