# XDG compatibility for different applications
eval $(dircolors "$XDG_CONFIG_HOME/dircolors") # coreutils
mkdir -p "$XDG_DATA_HOME"/wineprefixes # wine
#nvidia-settings --config="$XDG_CONFIG_HOME/nvidia/settings" # nvidia-settings
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"' # wget
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"' # yarn

# XDG exports
_JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java" # Java
NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc" # npm
NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history" # node.js
RUSTUP_HOME="$XDG_DATA_HOME/rustup" # rustup
W3M_DIR="$XDG_STATE_HOME/w3m" # w3m
WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default" # wine
PYTHON_HISTORY="$XDG_STATE_HOME/python/history" # python
PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python" # python
PYTHONUSERBASE="$XDG_DATA_HOME/python" # python
SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history" # SQLite
WGETRC="$XDG_CONFIG_HOME/wgetrc" # wget
#XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" # xorg-xauth
XINITRC="$XDG_CONFIG_HOME/X11/xinitrc" # xinit
XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc" # xinit
TEXMFHOME="$XDG_DATA_HOME/texmf" # TeX Live
TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var" # TeX Live
TEXMFCONFIG="$XDG_CONFIG_HOME/texlive/texmf-config" # TeX Live
AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials" # aws-cli
AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config" # aws-cli
CARGO_HOME="$XDG_DATA_HOME/cargo" # Rust#Cargo
GHCUP_USE_XDG_DIRS=true # ghcup-hs-bin
STACK_XDG=1 # Haskell#Stack
VSCODE_PORTABLE="$XDG_DATA_HOME/vscode" # Visual Studio Code
