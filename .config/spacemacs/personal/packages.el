(defvar personal-packages
  '(
    clocker
    w3m
    ))

(defadvice spacemacs/mode-line-prepare-left (around compile)
  (setq ad-return-value (clocker-add-clock-in-to-mode-line ad-do-it)))

(defun personal/init-clocker ()
  (use-package clocker
    :config
    (progn
      (ad-activate 'spacemacs/mode-line-prepare-left))))

(defun personal/init-w3m ()
  (use-package w3m
    :defer t))
