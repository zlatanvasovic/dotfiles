#!/bin/bash

#
# Bash RC configuration
#

# Check interactivity
[[ $- == *i* ]] || return

# Write history
shopt -s histappend
HISTSIZE=500
HISTFILESIZE=500
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%h %d %H:%M:%S "

# Check the window size
shopt -s checkwinsize

# Enable completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
  . /etc/bash_completion
fi

# Enable colors
if [ -x /usr/bin/dircolors ]
then
  [ -r ~/.dircolors ] && eval "$(dircolors -b ~/.dircolors)" || eval \
  "$(dircolors -b)"
  colors_support=true
fi

# Load helpers
bash_helpers=(
  /usr/local/rvm/scripts/rvm    # RVM
  ~/.dotfiles/bash/bash_*       # Bash stuff
)
for helper in ${bash_helpers[*]}
do
  . $helper
done