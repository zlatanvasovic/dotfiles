# If not running interactively, don't do anything
[[ $- = *i* ]] || return

# Set up history
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=1000

# Check the window size after each command
shopt -s checkwinsize

# Enable completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
  . /etc/bash_completion
fi

# Colors!
if [ -x /usr/bin/dircolors ]
then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  PS1="\[\033[1m\]\$\[\033[00m\] \[\033[1;34m\]\w\[\033[00m\] "
  alias ls="ls --color=always -p"
  alias grep="grep --color=always"
fi

# Text tools
alias uncrlf="sed -i 's/\r$//'"
alias pbcp="xclip -selection clipboard"

# Dotfiles
export PATH=${PATH}:~/.dotfiles/bin