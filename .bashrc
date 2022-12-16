#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

setxkbmap -option caps:escape
source /usr/share/bash-completion/completions/git
__git_complete config __git_main

if [[ $(ps --no-header --pid=$PPID --format=comm) !="fish" && -z ${BASH_EXECUTION_STRING} ]]
then
		exec fish
fi
