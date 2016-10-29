#
# Executes commands at login pre-zshrc.
#

#
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

if [ -z "$SSH_CONNECTION" ]; then
  export EMACSCLIENT=emacsclient
  export EDITOR="$EMACSCLIENT -t"
  export ALTERNATE_EDITOR=""
else
  export EDITOR=$(type -P emacs || type -P vim || type -P vi)
fi
export VISUAL=$EDITOR
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

if [[ -z "$LC_ALL" ]]; then
  export LC_ALL=en_US.UTF-8
fi

#
# golang
#

export GOPATH=/usr/local/lib/golang
export GOBIN=$GOPATH/bin

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

fpath=(
  $HOME/.zsh/functions
  $fpath
)

# Set the list of directories that Zsh searches for programs.
path=(
  $HOME/.local/bin
  /usr/local/opt/openssl/bin
  /usr/local/{bin,sbin}
  $path
  $GOBIN
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$LOGNAME"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"

export CHECKPOINT_DISABLE=1
export HOMEBREW_NO_ANALYTICS=1
export yeoman_test=1

export PACKER_CACHE_DIR=$HOME/.cache/packer
export PERU_CACHE_DIR=$HOME/.cache/peru
export ZPLUG_CACHE_FILE=$HOME/.cache/zplug

# Make Zsh the default shell
[[ $SHELL =~ "zsh" ]] || export SHELL=`builtin which zsh`
