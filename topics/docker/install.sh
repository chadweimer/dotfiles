#!/bin/sh

echo "› Installing devpod..."
curl -L -o "$ZSH/bin/devpod" https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64 && chmod 0755 "$ZSH/bin/devpod"
echo "› Installed devpod"
echo ""

exit 0
