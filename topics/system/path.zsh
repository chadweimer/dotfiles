export -U PATH="$ZSH/bin:$PATH:/usr/sbin"

# Add user's bin folders, if they exist
if [ -d "$HOME/.local/bin" ]; then
  export -U PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/bin" ]; then
  export -U PATH="$HOME/bin:$PATH"
fi
