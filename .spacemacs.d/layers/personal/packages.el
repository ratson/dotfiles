(defconst personal-packages
  '(
    ethan-wspace
    git-annex
    magit-annex
    org-cliplink
    w3m
    )
  )

(defun personal/init-ethan-wspace ()
  (use-package ethan-wspace
    :defer t
    :init
    (global-ethan-wspace-mode 1)))

(defun personal/init-git-annex ()
  (use-package git-annex :defer t))

(defun personal/init-magit-annex ()
  (use-package magit-annex :defer t))

(defun personal/init-org-cliplink ()
  (use-package org-cliplink :defer t))

(defun personal/init-w3m ()
  (use-package w3m :defer t))
