;; key bindings
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

(delete-selection-mode 1)
(global-set-key (kbd "C-d") 'delete-forward-char)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "\C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
(global-set-key (kbd "M-s") 'shrink-whitespace)

;; always use short 'y or n'. (comment to use 'yes' or 'no' for important questions)
(defalias 'yes-or-no-p 'y-or-n-p)
