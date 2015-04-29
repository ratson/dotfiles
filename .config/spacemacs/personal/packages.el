(defvar personal-packages
  '(
    clocker
    ethan-wspace
    w3m
    ))

(defadvice spacemacs/mode-line-prepare-left (around compile)
  (setq ad-return-value (clocker-add-clock-in-to-mode-line ad-do-it)))

(defun personal/init-clocker ()
  (use-package clocker
    :defer t
    :config
    (progn
      (ad-activate 'spacemacs/mode-line-prepare-left))))

(defun personal/init-ethan-wspace ()
  (use-package ethan-wspace
    :defer t
    :init
    (global-ethan-wspace-mode 1)))

(defun personal/init-w3m ()
  (use-package w3m
    :defer t))
