# Ratson’s dotfiles

## Installation

### Using Git

```bash
cd ~
git clone --bare --recursive -b master https://github.com/r4ts0n/dotfiles.git .git
git config core.bare false
git reset
git diff --name-status | sed -n '/^D/ s/^D\s*//gp' | xargs git checkout master
```
