if (( $+commands[devpod] )); then
  source <(devpod completion zsh); compdef _devpod devpod
fi
