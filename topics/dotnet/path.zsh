# If .NET SDK is installed, add the dotnet tools to the PATH
export DOTNET_CLI_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"/dotnet
if [ -d "$DOTNET_CLI_HOME" ]; then
  export PATH="$DOTNET_CLI_HOME/.dotnet/tools:$PATH"
fi