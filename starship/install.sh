#!/bin/sh

# Check for starship
if test ! $(which starship); then
    curl -sS https://starship.rs/install.sh | sh -s -- -y -b $ZSH/bin
fi

exit 0
