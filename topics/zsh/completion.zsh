# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME:-$HOME/.cache}"/zsh

# This should always be last, per the documentation in the repo
source $ZSH/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
