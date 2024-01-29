read -rp "This will install some applications in /opt/ and /usr/local/bin [y/N] " response
if [[ ! $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    exit 1
fi

for script in $(ls ./install/); do
    sudo bash -c "source ./install/$script"
done
