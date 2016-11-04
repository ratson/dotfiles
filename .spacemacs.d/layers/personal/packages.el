(defconst personal-packages
  '(
    ethan-wspace
    git-annex
    magit-annex
    org-cliplink
    org-journal
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

(defun personal/init-org-journal ()
  (use-package org-journal
    :defer t
    :init
    (setq-default org-journal-date-format "%A, %d/%m/%Y")
    (setq-default org-journal-file-format "%Y%m%d.org")))

(defun personal/init-w3m ()
  (use-package w3m :defer t))
