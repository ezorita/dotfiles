;; Require libs
(require 'paren)
(require 'auto-complete)
(require 'auto-complete-config)
(require 'yasnippet)

;; enable auto-complete mode
(ac-config-default)

;; word autocompletion
(setq tab-always-indent 'complete)

;; enable yasnippet for code snippet autocompletion
(yas-global-mode 1)

;; indent space
(setq c-default-style '((java-mode . "java") (awk-mode . "awk") (other . "gnu")) c-basic-offset 3)

;; DELIMITER OPTIONS (parentheses, brackets..)

;; enable only in programming modes
;;(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; electric pairs - ')' automatically appears when typing '(' (same for #, {, etc.)
(add-hook 'prog-mode-hook #'electric-pair-mode)

;; highlight pairs
(add-hook 'prog-mode-hook #'show-paren-mode)
;; set highlight color (default is ugly)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#54bddb")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)
