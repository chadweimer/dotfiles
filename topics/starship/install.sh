#!/bin/sh

# Skip installation if starship is already installed and not located at $ZSH/bin/starship
if command -v starship >/dev/null 2>&1 && [ "$(command -v starship)" != "$ZSH/bin/starship" ]; then
  echo "› starship is already installed through another method, skipping installation"
  exit 0
fi

echo "› Installing starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y -b "$ZSH/bin"
echo "› Installed starship"
echo ""

exit 0
