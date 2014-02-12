#!/bin/bash

#
# Bash RC configuration
#

# Check interactivity
[[ $- == *i* ]] || return

# Enable completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
  . /etc/bash_completion
fi

# Enable colors
if which dircolors > /dev/null
then
  if [ -r ~/.dircolors ]
  then
    eval "$(dircolors -b ~/.dircolors)"
  else
    eval "$(dircolors -b)"
  fi
  colors_support=true
fi

# Load helpers
bash_helpers=(
  /usr/local/rvm/scripts/rvm  # RVM
  ~/.dotfiles/bash/bash_*     # Bash stuff
)
for helper in ${bash_helpers[*]}
do
  . $helper
done