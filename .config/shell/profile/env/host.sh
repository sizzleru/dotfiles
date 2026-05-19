export USERNAME='sizzleru'
export HOSTNAME="${HOSTNAME:-"$( hostnamectl --static 2>/dev/null || hostname 2>/dev/null || echo 'localhost' )"}"
