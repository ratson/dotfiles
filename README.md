# Ratson’s dotfiles

## Installation

### Using Git

Note: existing submodules will cause error, backup and remove them first

```bash
cd ~
git clone --recursive --no-checkout -b master https://github.com/r4ts0n/dotfiles.git .dotfiles
git init --separate-git-dir=.dotfiles/.git
git reset
git ls-files -d -z | xargs -0 git checkout --
git submodule update --init --recursive
```
