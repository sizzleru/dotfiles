#!/bin/bash
echo "$(dirname "$0")" || exit 5
git pull

function setup() {
	\ls -p src | grep -v / | xargs -I% cp src/% $HOME/%
}
