#!/bin/sh

echo "› Installing starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y -b "$ZSH/bin"
echo "› Installed starship"
echo ""

exit 0
