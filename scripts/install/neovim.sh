if [[ ! -f /opt/neovim ]]; then
	mkdir /opt/neovim/
fi
cd /opt/neovim/
curl -sL https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz | tar -xvz || exit 1
ln -s /opt/neovim/nvim-linux64/bin/nvim /usr/local/bin/
chmod u+x /usr/local/bin/nvim
