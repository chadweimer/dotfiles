#!/bin/sh

# Check for Homebrew
if test ! $(which starship); then
    curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

exit 0
