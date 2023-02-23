if test $(which kubectl) 2> /dev/null; then
    source <(kubectl completion zsh)
fi

if test $(which helm) 2> /dev/null; then
    source <(helm completion zsh)
fi
