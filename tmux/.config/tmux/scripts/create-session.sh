#!/bin/bash

dir_path=$1
min_depth=$2
max_depth=$3

selected_dir=$(find "$dir_path" -mindepth $min_depth -maxdepth $max_depth -type d -printf '%P\n' | fzf)

if [ -n "$selected_dir" ]; then
  session_name=$(basename "$selected_dir" | tr '.' '_')
  if tmux has-session -t "$session_name" 2>/dev/null; then
    tmux switch-client -t "$session_name"
  else
    tmux new-session -d -s "$session_name" -c "$dir_path/$selected_dir"
    tmux switch-client -t "$session_name"
  fi
  tmux kill-pane -t "#{pane_id}"
else
  tmux kill-pane -t "#{pane_id}"
fi
