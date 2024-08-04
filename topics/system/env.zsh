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
    eval $(ssh-agent -s) > /dev/null
    # if [ "$(ssh-add -l)" = "The agent has no identities." ] ; then
    #     # Auto-add ssh keys to your ssh agent
    #     # Example:
    #     # ssh-add ~/.ssh/id_rsa > /dev/null 2>&1
    # fi
  fi
fi
