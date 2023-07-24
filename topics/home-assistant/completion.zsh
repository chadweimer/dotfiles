if (( $+commands[ha] )); then
  source <(ha completion zsh) && compdef _ha ha
fi
