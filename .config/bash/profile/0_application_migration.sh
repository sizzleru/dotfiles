# Bash
if [[ -f "${HOME}"/.bash_history ]]; then
    mkdir -p "${XDG_STATE_HOME}"/bash
    mv "${HOME}"/.bash_history "${XDG_STATE_HOME}"/bash/history
fi
if [[ -f "${HOME}"/.sudo_as_admin_successful ]]; then
    rm "${HOME}"/.sudo_as_admin_successful
fi

# Java
if [[ -d "${HOME}"/.java ]]; then
    mv -f "${HOME}"/.java "${XDG_CONFIG_HOME}"/java
fi

# npm
if [[ -d "${HOME}"/.npm ]]; then
    sudo rm -r "${HOME}"/.npm
fi

# Node.js
if [[ -f "${HOME}"/.node_repl_history ]]; then
    mkdir -p "${XDG_DATA_HOME}"/nodejs
    mv "${HOME}"/.node_repl_history "${XDG_DATA_HOME}"/node_repl_history
fi

# Rust#Rustup
if [[ -d "${HOME}"/.rustup ]]; then
    mv "${HOME}"/.rustup "${XDG_DATA_HOME}"/rustup
fi

# w3m
if [[ -d "${HOME}"/.w3m ]]; then
    mv "${HOME}"/.w3m "${XDG_STATE_HOME}"/w3m
fi

# wine
if [[ -d "${HOME}"/.wine ]]; then
    mkdir -p "${XDG_DATA_HOME}"/wineprefixes
    mv "${HOME}"/.wine "${XDG_DATA_HOME}"/wineprefixes/default
fi

# python
if [[ -f "${HOME}"/.python_history ]]; then
    mkdir -p "${XDG_STATE_HOME}"/python
    mv "${HOME}"/.python_history "${XDG_STATE_HOME}"/python/history
fi

# SQLite
if [[ -f "${HOME}"/.sqliterc ]]; then
    mkdir -p "${XDG_CONFIG_HOME}"/sqlite3
    mv "${HOME}"/.sqliterc "${XDG_CONFIG_HOME}"/sqlite3/sqliterc
fi
if [[ -f "${HOME}"/.sqlite_history ]]; then
    mkdir -p "${XDG_DATA_HOME}"/sqlite3
    mv "${HOME}"/.sqlite_history "${XDG_DATA_HOME}"/sqlite3/sqlite_history
fi

# wget
if [[ -f "${HOME}"/.wgetrc ]]; then
    mkdir -p "${XDG_CONFIG_HOME}"/wget/wgetrc
    mv "${HOME}"/.wgetrc "${XDG_CONFIG_HOME}"/wget/wgetrc
fi
if [[ -f "${HOME}"/.wget-hsts ]]; then
    mkdir -p "${XDG_CACHE_HOME}"/wget
    mv "${HOME}"/.wget-hsts "${XDG_CACHE_HOME}"/wget/wget-hsts
fi

# X11
if [[ -f "${HOME}"/.xinitrc ]]; then
    mkdir -p "${XDG_CONFIG_HOME}"/X11
    mv "${HOME}"/.xinitrc "${XDG_CONFIG_HOME}"/X11/xinitrc
fi
if [[ -f "${HOME}"/.xserverrc ]]; then
    mkdir -p "${XDG_CONFIG_HOME}"/X11
    mv "${HOME}"/.xserverrc "${XDG_CONFIG_HOME}"/X11/xserverrc
fi

# TeX Live
if [[ -d "${HOME}"/texmf ]]; then
    mv "${HOME}"/texmf "${XDG_DATA_HOME}"/
fi
if [[ -d "${HOME}"/.texlive/texmf-var ]]; then
    mkdir -p "${XDG_CACHE_HOME}"/texlive
    mv "${HOME}"/.texlive/texmf-var "${XDG_CACHE_HOME}"/texlive/
fi
if [[ -d "${HOME}"/.texlive/texmf-config ]]; then
    mkdir -p "${XDG_CONFIG_HOME}"/texlive
    mv "${HOME}"/.texlive/texmf-config "${XDG_CONFIG_HOME}"/texlive/
fi
if [[ -d "${HOME}"/.texlive ]]; then
    rm -r "${HOME}"/.texlive
fi

# aws-cli
if [[ -f "${HOME}"/.aws/credentials ]]; then
    mkdir -p "${XDG_CONFIG_HOME}"/aws
    mv "${HOME}"/.aws/credentials "${XDG_CONFIG_HOME}"/aws/
fi
if [[ -f "${HOME}"/.aws/config ]]; then
    mkdir -p "${XDG_CONFIG_HOME}"/aws
    mv "${HOME}"/.aws/config "${XDG_CONFIG_HOME}"/aws/
fi
if [[ -d "${HOME}"/.aws ]]; then
    rm -r "${HOME}"/.aws
fi

# Rust#Cargo
if [[ -d "${HOME}"/.cargo ]]; then
    mv "${HOME}"/.cargo "${XDG_DATA_HOME}"/cargo
fi

# ghcup-hs-bin
if [[ -d "${HOME}"/.ghcup ]]; then
    rm -r "${HOME}"/.ghcup
fi

# Haskell#Stack
if [[ -d "${HOME}"/.stack ]]; then
    mv "${HOME}"/.stack "${XDG_DATA_HOME}"/stack
fi

# Visual Studio Code
if [[ -d "${HOME}"/.vscode ]]; then
    mv "${HOME}"/.vscode "${XDG_DATA_HOME}"/vscode
fi

# Go
if [[ -d "${HOME}"/go ]]; then
    mv "${HOME}"/go "${XDG_DATA_HOME}"/
fi

# cabal
if [[ -d "${HOME}"/.cabal ]]; then
    rm -r "${HOME}"/.cabal
fi

# Desktop theming
if [[ -d "${HOME}"/.icons ]]; then
    mv "${HOME}"/.icons "${XDG_DATA_HOME}"/icons
fi
if [[ -d "${HOME}"/.themes ]]; then
    mv "${HOME}"/.themes "${XDG_DATA_HOME}"/themes
fi

# ipython
if [[ -d "${HOME}"/.ipython ]]; then
    mv "${HOME}"/.ipython "${XDG_CONFIG_HOME}"/ipython
fi

# Mathematia
if [[ -d "${HOME}"/.Mathematica ]]; then
    mv "${HOME}"/.Mathematica "${XDG_CONFIG_HOME}"/mathematica
fi

# mozc
if [[ -d "${HOME}"/.mozc ]]; then
    mv "${HOME}"/.mozc "${XDG_CONFIG_HOME}"/mozc
fi

# NSS
#if [[ -d "${HOME}"/.pki ]]; then
#    mv "${HOME}"/.pki "${XDG_DATA_HOME}"/pki
#fi

# vim
if [[ -d "${HOME}"/.vim ]]; then
    rm -r "${HOME}"/.vim
fi
if [[ -f "${HOME}"/.vimrc ]]; then
    rm "${HOME}"/.vimrc
fi
if [[ -f "${HOME}"/.viminfo ]]; then
    rm "${HOME}"/.viminfo
fi

# xournal
if [[ -d "${HOME}"/.xournal ]]; then
    rm -r "${HOME}"/.xournal
fi
if [[ -d "${HOME}"/.xournalpp ]]; then
    rm -r "${HOME}"/.xournalpp
fi

# zoom
if [[ -d "${HOME}"/.zoom ]]; then
    mv "${HOME}"/.zoom "${XDG_DATA_HOME}"/zoom
fi

# Git
if [[ -f "${HOME}"/.gitconfig ]]; then
    mkdir -p "${XDG_CONFIG_HOME}"/git
    mv "${HOME}"/.gitconfig "${XDG_CONFIG_HOME}"/git/config
fi

# less
if [[ -f "${HOME}"/.lesshst ]]; then
    mv "${HOME}"/.lesshst "${XDG_DATA_HOME}"/lesshst
fi
if [[ -f "${HOME}"/.lesskey ]]; then
    mv "${HOME}"/.lesskey "${XDG_CONFIG_HOME}"/lesskey
fi
