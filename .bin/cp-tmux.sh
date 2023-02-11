tmux new-session -c ~/CompassionPlanet/GamifyVeganism/compassion-game -s cp -n cpsite \; \
	send-keys 'poetry run code .; poetry shell' C-m \; \
	split-window -h \; \
	send-keys 'poetry run python manage.py runserver; poetry shell' C-m \; \
	split-window -v \; \
	send-keys 'alarm.sh 30m' \; \
	new-window -c ~ -n pgadmin \; \
	send-keys 'run_pgadmin.sh' \; \
	split-window -h \; \
	send-keys 'glances --percpu' C-m\; \
	select-window -l \; \
	select-pane -L \; \
	select-pane -U \;
