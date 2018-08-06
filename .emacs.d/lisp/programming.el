;; Require libs
(require 'paren)
(require 'company)
(require 'company-tern)
(require 'yasnippet)

;;
;; AUTOCOMPLETION
;;
;; enable autocomplete company-mode
(global-company-mode 1)
(setq
   company-echo-delay 0
   company-idle-delay 0.2
   company-minimum-prefix-length 1
   company-tooltip-align-annotations t
   company-tooltip-limit 10
   company-tooltip-flip-when-above t
   company-dabbrev-downcase nil
   company-require-match nil
   company-begin-commands '(self-insert-command)
)
(add-hook 'prog-mode-hook #'company-mode)
(add-hook 'prog-mode-hook #'company-quickhelp-mode)

;; preview first word even if it's not the only one
(setq company-frontends '(company-preview-frontend company-pseudo-tooltip-unless-just-one-frontend company-echo-metadata-frontend))

;; builtin word autocompletion
(setq tab-always-indent 'complete)

;; enable yasnippet for code snippet autocompletion
(yas-global-mode 1)

;;
;; INDENTATION
;;
;; indent space
(setq c-default-style '((java-mode . "java") (awk-mode . "awk") (other . "gnu")) c-basic-offset 3)
(add-hook 'python-mode-hook (lambda () (setq python-indent-offset 3)))
(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))

;;
;; DELIMITER OPTIONS (parentheses, brackets..)
;;
;; electric pairs - ')' automatically appears when typing '(' (same for #, {, etc.)
(add-hook 'prog-mode-hook #'electric-pair-mode)

;; highlight pairs
(add-hook 'prog-mode-hook #'show-paren-mode)
;; set highlight color (default is ugly)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#54bddb")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)

;; GDB DEBUGGER
(global-set-key (kbd "C-x SPC") 'gud-break)

;; JAVASCRIPT
;; enable js2-mode for '.js' files.
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; add company-tern to company backend (this enables javascript autocompletion).
(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode))
	  )
