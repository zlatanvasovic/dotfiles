# ~/.profile: executed by the command interpreter for login shells.

# If running Bash
if [ -n "$BASH_VERSION" ]
then
  if [ -f "$HOME/.bashrc" ]
  then
    . "$HOME/.bashrc"
  fi
fi
