#!/bin/bash

SESSION_NAME="dev"

# start a new session in the background
tmux new-session -d -s $SESSION_NAME

# create default windows
tmux new-window -t $SESSION_NAME:2 -n git 'bash'
tmux new-window -t $SESSION_NAME:3 -n tunnel 'bash'
tmux new-window -t $SESSION_NAME:4 -n admin 'bash'
tmux new-window -t $SESSION_NAME:5 -n misc 'bash'

# set window 1 as default when starting
tmux select-window -t $SESSION_NAME:1
# attach to session
tmux attach -t $SESSION_NAME
