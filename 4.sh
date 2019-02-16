tmux new-session -s dantre -d 'htop'
tmux split-window -t dantre -v 'sudo tcpdump port 80 or port 443'
tmux select-pane -t dantre:0.0
tmux split-window -t dantre -h
tmux clock-mode -t dantre
tmux a -t dantre
