# Ratson’s dotfiles

## Installation

### Using Git

```bash
cd ~
git clone --recursive --no-checkout -b master https://github.com/r4ts0n/dotfiles.git .dotfiles
git init --separate-git-dir=.dotfiles/.git
git reset  # existing submodules will cause error, need remove first
git ls-files -d -z | xargs -0 git checkout --
git submodule update --init --recursive
```
