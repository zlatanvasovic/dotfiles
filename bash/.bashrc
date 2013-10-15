# Check for interactivity
[[ $- = *i* ]] || return

# Write history
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

# Enable colors
if [ -x /usr/bin/dircolors ]
then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  PS1="\[\033[1m\]\$\[\033[00m\] \[\033[1;34m\]\w\[\033[00m\] "
  alias ls="ls --color=always -p"
  alias grep="grep --color=always"
fi

# Text tools
alias uncrlf="sed -i 's/\r$//'"
alias pbcopy="xclip -sel clip"
alias pbpaste="xclip -sel clip -o"

# Scripts
PATH=${PATH}:~/.dotfiles/bin

# Helpers
. ~/dev/git/smith/smith.sh
alias git="hub"