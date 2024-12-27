#
# ~/.bashrc
#

# If not running interactively, don't do anything

export EDITOR=nvim
export BROWSER=/usr/bin/firefox
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cpclip='xsel --clipboard'
PS1='[\u@\h \W]\$ '

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main

source /usr/share/nvm/init-nvm.sh

eval "$(starship init bash)"
