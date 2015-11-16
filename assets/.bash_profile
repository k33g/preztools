cd ../../src
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
