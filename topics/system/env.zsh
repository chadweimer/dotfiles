export EDITOR='nano'
export LESS='-R --use-color -Dd+r$Du+b'

# Prefer GNOME Keyring as ssh agent, if available
if [[ ! -v SSH_AUTH_SOCK && -e $XDG_RUNTIME_DIR/gcr/ssh ]]; then
  export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
elif (( $+commands[ssh-agent] )); then
  # Use KDE Wallet, if available
  if (( $+commands[ksshaskpass] )); then
    export SSH_ASKPASS=$(which ksshaskpass)
    export SSH_ASKPASS_REQUIRE=prefer
  fi

  # Start the ssh agent, if not already running
  if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -s > "$XDG_RUNTIME_DIR/ssh-agent.env"
  fi
  if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
  fi
fi
