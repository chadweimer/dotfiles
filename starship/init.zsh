if test $(which starship); then
  source <(starship init zsh)
fi

export STARSHIP_CONFIG=~/.starship.toml