export EDITOR=nano
export VISUAL=$EDITOR

# Source the greetings banner
[ ! -d "/etc/hashbang" ] || /etc/hashbang/welcome

# make sure this is an interactive session, then start tmux
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && ~/.tmux_bootstrap
[[ -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"
