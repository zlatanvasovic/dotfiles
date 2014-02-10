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
  color_support=true

  # Design prompt
  PS1="\[\033[1;35m\]%\[\033[00m\] \[\033[1;34m\]\w\[\033[00m\] "

  # Colorful aliases
  alias ls="ls --color=auto"
  alias grep="grep --color=auto"
fi

# Nicer continuation prompt
PS2="| "

# Aliases
alias uncrlf="sed -i 's/\r$//'"
alias pbcopy="xclip -sel clip"
alias pbpaste="xclip -sel clip -o"
alias git=hub
alias rdb="rethinkdb -d .rdb"

# Scripts
PATH+=:~/.dotfiles/bin
. ~/.dotfiles/bash/ttl
. /usr/local/rvm/scripts/rvm