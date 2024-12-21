#!/bin/bash

xinput --set-prop "$(xinput | grep pointer | grep 'Glorious Model O' | grep -Eo 'id=[0-9]*' | awk -F= '{ print $2 }')" 'libinput Accel Speed' "${1}"
