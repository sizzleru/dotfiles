# XDG compatibility for different applications
eval $(dircolors "$XDG_CONFIG_HOME/dircolors") # coreutils
_JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java" # Java
NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc" # npm
RUSTUP_HOME="$XDG_DATA_HOME/rustup" # rustup
W3M_DIR="$XDG_STATE_HOME/w3m" # w3m
WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default" # wine
