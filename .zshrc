#
# Executes commands at the start of an interactive session.
#

export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "Schnouki/git-annex-zsh-completion", at:e87e7db

zplug 'modules/environment', from:prezto
zplug 'modules/terminal', from:prezto
zplug 'modules/editor', from:prezto
zplug "modules/history", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/spectrum", from:prezto
zplug 'modules/utility', from:prezto
zplug "modules/completion", from:prezto
zplug "modules/fasd", from:prezto
zplug "modules/git", from:prezto
zplug "modules/gpg", from:prezto
zplug "modules/node", from:prezto
zplug 'modules/osx', from:prezto
zplug 'modules/pacman', from:prezto
zplug "modules/python", from:prezto
zplug "modules/rsync", from:prezto
zplug "modules/ruby", from:prezto
zplug "modules/ssh", from:prezto
zplug "modules/tmux", from:prezto
zplug "modules/prompt", from:prezto
zstyle ':prezto:*:*' color 'yes'
zstyle ':prezto:module:editor' key-bindings 'emacs'
zstyle ':prezto:module:prompt' theme 'squeak'
zstyle ':prezto:module:terminal' auto-title 'yes'

# Set the priority when loading
# zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", nice:10

zplug "~/.zsh", from:local

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
