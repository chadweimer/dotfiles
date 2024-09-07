#!/bin/sh

# Check for devpod
if [ ! -f "$ZSH/bin/devpod" ]; then
    curl -L -o "$ZSH/bin/devpod" https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64 && chmod 0755 "$ZSH/bin/devpod"
fi

exit 0
