if status is-interactive
    # Commands to run in interactive sessions can go here
	and xset q &>/dev/null 
	and not set -q TMUX		
	exec tmux
end
alias dotfgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
starship init fish | source
