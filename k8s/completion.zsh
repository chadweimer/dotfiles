if test $(which kubectl); then
    source <(kubectl completion zsh)
fi

if test $(which helm); then
    source <(helm completion zsh)
fi
