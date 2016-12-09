#
# Executes commands at the start of an interactive session.
#

export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

# zsh-users
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3

# plugins
zplug "Schnouki/git-annex-zsh-completion", at:e87e7db, frozen:1
zplug "lukechilds/zsh-better-npm-completion", at:c20b07c, frozen:1, defer:2
zplug "supercrabtree/k", at:1fa7c03, frozen:1
zplug "tarrasch/zsh-bd", at:3724233, frozen:1

# prezto
zplug 'modules/environment', from:prezto
zplug 'modules/terminal', from:prezto, frozen:1
zplug 'modules/editor', from:prezto, frozen:1
zplug "modules/history", from:prezto, frozen:1
zplug "modules/directory", from:prezto, frozen:1
zplug "modules/spectrum", from:prezto, frozen:1
zplug 'modules/utility', from:prezto, frozen:1
zplug "modules/completion", from:prezto, frozen:1
zplug "modules/fasd", from:prezto, frozen:1
zplug "modules/git", from:prezto, frozen:1
#zplug "modules/gpg", from:prezto, frozen:1
zplug "modules/node", from:prezto, frozen:1
zplug 'modules/osx', from:prezto, frozen:1
#zplug 'modules/pacman', from:prezto, frozen:1
zplug "modules/python", from:prezto, frozen:1
zplug "modules/rsync", from:prezto, frozen:1
zplug "modules/ruby", from:prezto, frozen:1
#zplug "modules/ssh", from:prezto, frozen:1
zplug "modules/tmux", from:prezto, frozen:1
zplug "modules/prompt", from:prezto, frozen:1
zstyle ':prezto:*:*' color 'yes'
zstyle ':prezto:module:editor' key-bindings 'emacs'
zstyle ':prezto:module:prompt' theme 'squeak'
zstyle ':prezto:module:terminal' auto-title 'yes'

zplug "~/.zsh", from:local

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose

# zsh variables
HISTFILE="$HOME/.local/share/zsh_history"
SAVEHIST=1000000

# zsh-history-substring-search
if zplug check "zsh-users/zsh-history-substring-search"; then
  zmodload zsh/terminfo
  [ -n "${terminfo[kcuu1]}" ] && bindkey "${terminfo[kcuu1]}" history-substring-search-up
  [ -n "${terminfo[kcud1]}" ] && bindkey "${terminfo[kcud1]}" history-substring-search-down
  bindkey -M emacs '^P' history-substring-search-up
  bindkey -M emacs '^N' history-substring-search-down
  bindkey -M vicmd 'k' history-substring-search-up
  bindkey -M vicmd 'j' history-substring-search-down
fi
