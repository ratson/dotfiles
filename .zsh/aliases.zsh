# Emacs
alias et='emacsclient -t'

# SSH
alias ssh-unsafe='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

# utils
alias cleanup-osx-junks="find . -type f -name '.DS_Store' -ls -delete"
alias dam='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

# shorthand
alias t=task
alias va=vagrant

# typo
alias taks=task
alias wokron=workon
alias wrkon=workon
