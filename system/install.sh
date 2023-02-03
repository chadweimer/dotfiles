#!/bin/sh

# Usage: pkginst <pkg>...
# Description: install a packge via the distro's package manager
pkginst () {
    if test $(which pacman); then
        pacman -yS $*
    elif test $(which apt-get); then
        apt-get update && apt-get install -y $*
    elif test $(which dnf); then
        dnf install -y $*
    elif test $(which yum); then
        yum install -y $*
    else
        echo "'$1' is not a valid file"
    fi
}

# Install xclip
if ! test $(which xclip); then
   pkginst xclip
fi