mkdir /opt/kovidgoyal/
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin installer=nightly dest=/opt/kovidgoyal/
ln -s /opt/kovidgoyal/kitty.app/bin/kitt* /usr/local/bin/kitt*
chmod u+x usr/local/bin/kitt*
