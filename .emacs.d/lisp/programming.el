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
(add-hook 'pug-mode-hook (lambda () (setq pug-tab-width 3)))

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
;; Set up TIDE, requires
;;  - typescript: npm install -g typescript
;;  - eslint: npm install -g eslint
;;  - prettier: npm install -g prettier

(defun setup-js-mode ()
  "Setup default emacs JS mode."
  (interactive)
  (setq js-indent-level 2))

(defun setup-tide-mode ()
  "Setup function for tide."
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))


(setq company-tooltip-align-annotations t)

(add-hook 'js-mode-hook #'setup-js-mode)

(add-hook 'js-mode-hook #'setup-tide-mode)

(add-hook 'js-mode-hook 'prettier-js-mode)


;; FORMAT OPTIONS FOR JS files (prettier)

;; (setq prettier-js-args '(
;;   "--trailing-comma" "none"
;;   "--bracket-spacing" "true"
;;   "--single-quote" "true"
;;   "--no-semi" "true"
;;   "--jsx-single-quote" "true"
;;   "--jsx-bracket-same-line" "true"
;;   "--print-width" "78"))
(setq prettier-js-args '(
     "--print-width" "78"))
			 
;; Old modes for emacs < 27
;; enable js2-mode for '.js' files.
;; (add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
;; add company-tern to company backend (this enables javascript autocompletion).
;;(add-to-list 'company-backends 'company-tern)
;; (add-hook 'js2-mode-hook (lambda ()
;;                            (tern-mode)
;;                            (company-mode))
;; 	  )
