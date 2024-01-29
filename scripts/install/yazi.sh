if [[ ! -f /opt/sxyazi/ ]]; then
	mkdir /opt/sxyazi/
fi

cd /opt/sxyazi/
curl -LO "https://github.com/sxyazi/yazi/releases/download/v0.2.2/yazi-x86_64-unknown-linux-gnu.zip"
unzip -v yazi-x86_64-unknown-linux-gnu.zip
rm -v yazi-x86_64-unknown-linux-gnu.zip
ln -vfs $PWD/yazi-x86_64-unknown-linux-gnu/yazi /usr/local/bin/
