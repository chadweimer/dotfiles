# zsh doesn't automatically create some directories
mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}"/zsh
mkdir -p "${XDG_CONFIG_HOME:-$HOME/.config}"/zsh
mkdir -p "${XDG_STATE_HOME:-$HOME/.local/state}"/zsh
