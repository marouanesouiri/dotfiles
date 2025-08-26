#!/bin/bash

selected_session=$(tmux list-sessions -F "#{session_name}" | fzf)

if [ -n "$selected_session" ]; then
  tmux switch-client -t "$selected_session"
fi
