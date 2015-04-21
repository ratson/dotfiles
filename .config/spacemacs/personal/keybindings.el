(defun save-and-switch-to-normal-state ()
  (interactive)
  (save-buffer)
  (evil-normal-state))

(define-key evil-insert-state-map (kbd "C-s") 'save-and-switch-to-normal-state)
(define-key evil-normal-state-map (kbd "C-s") 'save-buffer)
