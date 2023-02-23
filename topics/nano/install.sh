#!/bin/sh

if [ -d ~/.nano ]; then
    cd ~/.nano
    if test $(git rev-parse --is-inside-work-tree 2> /dev/null); then
        git pull --force
    fi
else
    git clone https://github.com/scopatz/nanorc ~/.nano
fi

exit 0
