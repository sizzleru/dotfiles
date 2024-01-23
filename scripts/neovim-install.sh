CWD=$PWD
mkdir /opt/neovim/ && cd /opt/neovim/
curl -O https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
ln -s /opt/neovim/nvim-linux64/bin/nvim /usr/local/bin/
chmod u+x /usr/local/bin/nvim
cd $CWD
unset CWD
