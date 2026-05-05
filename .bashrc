# ~/.bashrc

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cpcb='xsel --clipboard'
PS1='[\u@\h \W]\$ '

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export EDITOR=nvim
export BROWSER=/usr/bin/chromium

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
source /usr/share/bash-complete-alias/complete_alias
complete -F _complete_alias dotfiles

source /usr/share/nvm/init-nvm.sh
alias i3lock='i3lock --nofork -c 000000'
eval "$(starship init bash)"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
. "/home/evan/.deno/env"
