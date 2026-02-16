export DOCKER_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}"/docker

# Rancher Desktop (Mac)
if [ -d "$HOME/.rd/bin" ]; then
  export PATH="$HOME/.rd/bin:$PATH"
fi
