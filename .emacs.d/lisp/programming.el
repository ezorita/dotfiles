;; Require libs
(require 'paren)
(require 'company)
(require 'yasnippet)

;; enable autocomplete company-mode
(add-hook 'prog-mode-hook #'company-mode)
;; preview first word even if it's not the only one
(setq company-frontends '(company-preview-frontend company-pseudo-tooltip-unless-just-one-frontend company-echo-metadata-frontend))

;; builtin word autocompletion
(setq tab-always-indent 'complete)

;; enable yasnippet for code snippet autocompletion
(yas-global-mode 1)

;; indent space
(setq c-default-style '((java-mode . "java") (awk-mode . "awk") (other . "gnu")) c-basic-offset 3)
(add-hook 'python-mode-hook (lambda () (setq python-indent-offset 3)))

;; DELIMITER OPTIONS (parentheses, brackets..)

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
