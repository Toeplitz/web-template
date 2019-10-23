# elm reactor ./frontend

#tmux new -d python3 backend/main.py
#tmux new -c frontend -d elm reactor 

tmux new-session -s webdev -n 'win' -d

# send 'tail -f foo<enter>' to the first pane.
# I address the first pane using the -t flag. This is not necessary,
# I'm doing it so explicitly to show you how to do it.
# for the <enter> key, we can use either C-m (linefeed) or C-j (newline)
tmux send-keys -t webdev:win.0 'python3 backend/main.py' C-j 


# split the window *vertically*
tmux split-window -v

# we now have two panes in win: pane 0 is above pane 1
# again, specifying pane 1 with '-t 1' is optional
tmux send-keys -t webdev:win.1 'cd frontend && elm reactor' C-j

# uncomment the following command if you want to attach
# explicitly to the window we just created

#tmux select-window -t webdev:win

# finally attach to the session
tmux attach -t webdev
