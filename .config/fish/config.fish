if status is-interactive
    # Commands to run in interactive sessions can go here
	and xset q &>/dev/null 
	and not set -q TMUX		
	exec tmux
end


starship init fish | source
