# Make a directory and enter it
mkd() {
  mkdir -p "$1" && cd "$1"
}

function {
  local pfunction_glob='^([_.]*|prompt_*_setup|README*)(-.N:t)'
  local pfunction

  # Extended globbing is needed for listing autoloadable function directories.
  setopt LOCAL_OPTIONS EXTENDED_GLOB

  for pfunction in $HOME/.zsh/functions/$~pfunction_glob; do
    autoload -Uz "$pfunction"
  done
}
