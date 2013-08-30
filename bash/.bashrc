# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Set up history
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=1000

# Check the window size after each command
shopt -s checkwinsize

# Make `less` more friendly for non-text input files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Enable completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix
then
  . /etc/bash_completion
fi

# Set variable identifying the chroot I work in
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]
then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# Colors!
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;37m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] \$ "

if [ -x /usr/bin/dircolors ]
then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls="ls --color=always -p"
  alias grep="grep --color=auto"
fi

# Formatting
bold=`tput bold`
normal=`tput sgr0`

# Dotfiles
export PATH=${PATH}:~/dev/dotfiles/bin
export PATH=${PATH}:~/dev/dotfiles/script
