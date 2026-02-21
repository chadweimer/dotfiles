# If .NET SDK is installed, add the dotnet tools to the PATH
if [ -n "$DOTNET_CLI_HOME" ]; then
  export PATH="$DOTNET_CLI_HOME/.dotnet/tools:$PATH"
fi