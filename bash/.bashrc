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

  # Design prompt
  PS1="\[\033[1;35m\]%\[\033[00m\] \[\033[1;34m\]\w\[\033[00m\] "
fi

# Nicer continuation prompt
PS2="| "

# Scripts
PATH+=:~/.dotfiles/bin

# Load helpers
bash_helpers=(
  /usr/local/rvm/scripts/rvm    # RVM
  ~/.dotfiles/bash/bash_aliases # Aliases
  ~/.dotfiles/bash/bash_title   # Title
)
for helper in ${bash_helpers[*]}
do
  . $helper
done