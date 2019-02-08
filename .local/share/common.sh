test -z "$LANG" && export LANG='en_US.UTF-8'
test -z "$LC_ALL" && export LC_ALL=en_US.UTF-8

# Emacs
alias et='emacsclient -t'

# Git
alias g='git'
# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

# Python
alias py='python'
alias py2='python2'
alias py3='python3'

# SSH
alias ssh-unsafe='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

# utils
alias cleanup-osx-junks="find . -type f -name '.DS_Store' -ls -delete"

# shorthand
alias mkd=mkdcd
alias o=open
alias t=task
alias va=vagrant
alias wko=workon
alias ya='yarn --prefer-offline'
alias yas='env BROWSER=none yarn start'
alias yau='yarn upgrade-interactive'

# typo
alias taks=task
alias wokron=workon
alias wrkon=workon
