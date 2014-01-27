#!/usr/bin/env bash

HERE=$(pwd)

pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    	echo "Adding $1 to PATH..."
        export PATH="${PATH:+"$PATH:"}$1"
        echo "new PATH : $PATH"
    fi
}

echo "Checking if $HERE/bin is in PATH"
pathadd "$HERE/bin"