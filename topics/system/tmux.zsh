if [[ $- =~ i ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_TTY" ]] && (( $+commands[tmux] )); then
  exec tmux new-session -A -s ssh
fi
