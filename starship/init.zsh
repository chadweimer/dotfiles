export STARSHIP_CONFIG=~/.starship.toml

if test $(which starship) 2> /dev/null; then
  source <(starship init zsh)
fi
