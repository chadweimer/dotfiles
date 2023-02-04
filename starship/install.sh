#!/bin/sh

# Check for starship
if [ ! -f '$ZSH/bin/starship' ]; then
    curl -sS https://starship.rs/install.sh | sh -s -- -y -b $ZSH/bin
fi

exit 0
