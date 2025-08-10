#
# ~/.bashrc
#

# If not running interactively, don't do anything

export EDITOR=nvim
export BROWSER=/usr/bin/chromium
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

alias composer='/usr/bin/php82 /usr/local/bin/composer'
alias wp='php82 /usr/local/bin/wp'
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/usr/local/go/bin
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"


export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/lib64:$LD_LIBRARY_PATH
. "/home/evylz/.deno/env"

eval "$(starship init bash)"
