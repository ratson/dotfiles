# Atom layer for Spacemacs

When I have to use [Atom](https://atom.io/), I use its default keybindings.

This layer will add some handy keybindings to [Spacemacs](https://github.com/syl20bnr/spacemacs).

## Install

Clone to `~/.emacs.d/private/atom`

    $ git clone https://github.com/r4ts0n/spacemacs-atom ~/.emacs.d/private/atom

Add `atom` to your `~/.spacemacs` configuration layers

```elisp
(setq-default dotspacemacs-configuration-layers '(atom)
  "List of contribution to load."
)
```

## Key bindings

Key Binding             | `M-x` command
------------------------|----------------------------------------------------------------
<kbd>s-/</kbd>          | `evilnc-comment-or-uncomment-lines`
<kbd>s-P<return\></kbd> | `helm-M-x`
<kbd>s-\\</kbd>         | `neotree-toggle`
<kbd>s-p</kbd>          | `helm-projectile-find-file`
<kbd>s-t</kbd>          | `helm-find-files`
<kbd>s-0</kbd>          | `spacemacs/reset-font-size`

## Caveats

I am using `global-set-key`, which probably is not a good idea.

If anyone has interest to turn this into a minor mode, pull requests are welcome.
