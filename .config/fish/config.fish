set PATH $HOME/.nodenv/bin $HOME/.local/bin $PATH

source ~/.local/share/common.sh

alias j='fasd_cd -i'

alias l='exa -1'
alias ll='exa -l -a -h --extended'

export VIRTUALFISH_HOME=$HOME/.local/share/virtualenvs
eval (/usr/local/bin/python3 -m virtualfish compat_aliases)

status --is-interactive; and source (nodenv init - | psub)
alias nv='nodenv'
