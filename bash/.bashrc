#!/bin/bash

#
# Bash configuration
#

# Check interactivity
[[ $- == *i* ]] || return

# Enable colors
if [ $(which dircolors) ]
then
  if [ -r ~/.dircolors ]
  then
    eval "$(dircolors -b ~/.dircolors)"
  else
    eval "$(dircolors -b)"
  fi
  export color_support=true
fi

# Load helpers
helpers=(
  ~/.rvm/scripts/rvm              # RVM
  ~/.dotfiles/bash/bash_options   # Bash options
  ~/.dotfiles/bash/bash_functions # Bash functions
  ~/.dotfiles/bash/bash_paths     # Bash paths
  ~/.dotfiles/bash/bash_aliases   # Bash aliases
  ~/.dotfiles/bash/bash_prompt    # Bash prompt
  ~/.dotfiles/bash/bash_title     # Bash terminal title
  /etc/bash_completion            # Bash completion
  ~/.bash_private                 # Private stuff
)
for helper in ${helpers[*]}
do
  if [ -f $helper ]
  then
    . $helper
  fi
done

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
