# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Append to the history file, don't overwrite it
shopt -s histappend

# History setup
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command
shopt -s checkwinsize

# Make `less` more friendly for non-text input files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set variable identifying the chroot I work in
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]
then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# Set a fancy prompt (non-color, unless I "want" color)
case "$TERM" in
  xterm-color) color_prompt=yes;;
esac

# Colored prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;37m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] \$ '

# Enable commands with colors
if [ -x /usr/bin/dircolors ]
then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls="ls --color=always -p"
  alias grep="grep --color=auto"
fi

# Add an `alert` alias for long running commands
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
  . /etc/bash_completion
fi

# Variables
bold=`tput bold`
normal=`tput sgr0`
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;37m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] \$ "

# Dotfiles
export PATH=${PATH}:~/dev/dotfiles/bin
export PATH=${PATH}:~/dev/dotfiles/script

# Hub
alias git="~/dev/hub"
