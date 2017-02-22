extend:
  git:
    pkg:
      # git provided completion hides better zsh one, so install without it
      - options: ["--with-blk-sha1", "--with-brewed-curl", "--with-brewed-openssl", "--with-brewed-svn", "--with-gettext", "--with-pcre", "--with-persistent-https", "--without-completions"]
  zsh:
    pkg:
      - options: ["--disable-etcdir"]

macos-pkgs:
  pkg.installed:
    - pkgs:
      - aria2
      - cloc
      - coreutils
      - dos2unix
      - fasd
      - ffind
      - findutils
      - fish
      - fortune
      - go
      - jq
      - jsonpp
      - multitail
      - nmap
      - pandoc
      - pass
      - peco
      - pypy
      - python
      - python3
      - ranger
      - reattach-to-user-namespace
      - ripgrep
      - ruby
      - shellcheck
      - terminal-notifier
      - testssl
      - the_silver_searcher
      - trash
      - tree
      - vegeta
      - w3m
      - wget
      - youtube-dl

aspell:
  pkg.installed:
    - options: ["--with-lang-en"]

dnsmasq:
  pkg.installed:
    - options: ["--with-dnssec", "--with-libidn"]

emacs:
  pkg.installed:
    - options: ["--with-cocoa", "--with-gnutls", "--with-imagemagick", "--verbose"]

task:
  pkg.installed

node:
  pkg.installed:
    - pkgs:
      - node
      - yarn

compression:
  pkg.installed:
    - pkgs:
      - p7zip
      - xz
      - zopfli

vcs:
  pkg.installed:
    - pkgs:
      - git-annex
      - git-cal
      - mercurial
      - subversion
      - tig
