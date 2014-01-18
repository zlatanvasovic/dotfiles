# Check interactivity
[[ $- == *i* ]] || return

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
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval \
  "`dircolors -b`"

  # Set prompt
  PS1="\[\033[1;35m\]%\[\033[00m\] \[\033[1;34m\]\w\[\033[00m\] "

  # Colorful aliases
  alias ls="ls --color=auto -p"
  alias grep="grep --color=auto"
fi

# Aliases
alias uncrlf="sed -i 's/\r$//'"
alias pbcopy="xclip -sel clip"
alias pbpaste="xclip -sel clip -o"
alias git="hub"
alias rdb="rethinkdb -d .rdb"

# Scripts
PATH=${PATH}:~/.dotfiles/bin
. ~/.dotfiles/bash/ttl
. /usr/local/rvm/scripts/rvm