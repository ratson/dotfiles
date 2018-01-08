[[ -n "$XDG_CONFIG_HOME" ]] || export XDG_CONFIG_HOME="$HOME/.config"
[[ -n "$ZDOTDIR" ]] || export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

source "$ZDOTDIR/.zshenv"
