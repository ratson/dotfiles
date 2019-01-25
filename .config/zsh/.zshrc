source virtualenvwrapper_lazy.sh

NVM_LAZY_LOAD=true
if [[ ! -f "$NVM_DIR/nvm.sh" ]]; then
  ZSH_NVM_NO_LOAD=true
fi

GEOMETRY_PROMPT_PLUGINS=(virtualenv docker_machine exec_time git hg)
GEOMETRY_SYMBOL_PROMPT="\b"
GEOMETRY_SYMBOL_EXIT_VALUE="\b"
GEOMETRY_COLOR_DIR="green"
GEOMETRY_PROMPT_SUFFIX="\n$ "

read -r -d '' BUNDLES << EOF
### zsh-users ###
zsh-users/zsh-autosuggestions
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-history-substring-search
### plugins ###
lukechilds/zsh-nvm
# supercrabtree/k
Tarrasch/zsh-bd
### prompt ###
mafredri/zsh-async
### prezto ###
sorin-ionescu/prezto
EOF
source <( antibody bundle $BUNDLES)

zstyle ':completion::complete:*' cache-path "$ANTIBODY_HOME/.zcompcache"

unalias g
autoload -Uz c
autoload -Uz g
autoload -Uz em

source "$HOME/.local/share/common.sh"
source "$HOME/.config/zsh/custom/init.zsh"
source "$HOME/.config/zsh/custom/functions/prompt_stun_setup"

# zsh variables
HISTFILE="$HOME/.local/share/zsh_history"
SAVEHIST=1000000
HISTSIZE=100000
HISTFILESIZE=$HISTSIZE
# Make some commands not show up in history.
HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help:ll:"
