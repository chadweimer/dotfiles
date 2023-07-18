export EDITOR='nano'
export LESS='-R --use-color -Dd+r$Du+b'

# Use GNOME Keyring as ssh agent, if available
if [[ ! -v SSH_AUTH_SOCK && -e $XDG_RUNTIME_DIR/gcr/ssh ]]; then
  export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
fi
