#!/bin/sh

# Parameters
PICTURES_DIR="${HOME}/Pictures/backgrounds/2560x1440"
CYCLE_TIME='3600'

# Find all valid pictures
FILELIST="$(mktemp)"
find "${PICTURES_DIR}" -type f -regex '.*\.\(jpg\|jpeg\|png\)$' > "${FILELIST}"

status=0
while [ "${status}" -eq 0 ]; do 

	sleep "${CYCLE_TIME}"
	feh \
		--bg-fill \
		--filelist "${FILELIST}" \
		--randomize \
		--no-fehbg \
		--verbose \
		--preload
	
	status="${?}"
done

rm -v "${FILELIST}"
unset FILELIST
