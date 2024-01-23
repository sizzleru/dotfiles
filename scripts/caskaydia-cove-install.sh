CWD=$PWD
cd $HOME/.local/share/fonts/
curl -O "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/CascadiaCode.zip"
unzip CascadiaCode.zip
rm CascadiaCode.zip
cd $CWD
unset CWD
