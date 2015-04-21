(defvar personal-packages
  '(
    clocker
    ))

(defadvice spacemacs/mode-line-prepare-left (around compile)
  (setq ad-return-value (clocker-add-clock-in-to-mode-line ad-do-it)))

(defun personal/init-clocker ()
  (use-package clocker
    :config
    (progn
      (ad-activate 'spacemacs/mode-line-prepare-left)
      (clocker-mode 1))))
