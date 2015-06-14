#
# Executes commands at the start of an interactive session.
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

  alias mkcd=mkdcd
  unalias g
fi

function home_source {
  [[ -f $HOME/$1 ]] && source $HOME/$1
}

home_source .zsh/yeoman/yeoman.plugin.zsh
home_source .zsh/aliases.zsh

function {
  local pfunction_glob='^([_.]*|prompt_*_setup|README*)(-.N:t)'
  local pfunction

  # Extended globbing is needed for listing autoloadable function directories.
  setopt LOCAL_OPTIONS EXTENDED_GLOB

  for pfunction in $HOME/.zsh/functions/$~pfunction_glob; do
    autoload -Uz "$pfunction"
  done

  for pfunction in $HOME/.zsh/prezto/functions/$~pfunction_glob; do
    autoload -Uz "$pfunction"
  done
}
