#!/bin/bash

SESSION_NAME="main"

# Only create the session if it doesn't already exist
if ! tmux has-session -t $SESSION_NAME 2>/dev/null; then
  tmux new-session -d -s $SESSION_NAME -n main-1
  tmux new-window -t $SESSION_NAME:2 -n main-2
  tmux new-window -t $SESSION_NAME:3 -n ssh-1
  tmux new-window -t $SESSION_NAME:4 -n ssh-2
  tmux new-window -t $SESSION_NAME:5 -n rly-1
  tmux new-window -t $SESSION_NAME:6 -n rly-2
fi

tmux attach-session -t $SESSION_NAME
