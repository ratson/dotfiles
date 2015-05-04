(defvar personal-packages
  '(
    ethan-wspace
    w3m
    ))

(defun personal/init-ethan-wspace ()
  (use-package ethan-wspace
    :defer t
    :init
    (global-ethan-wspace-mode 1)))

(defun personal/init-w3m ()
  (use-package w3m
    :defer t))
