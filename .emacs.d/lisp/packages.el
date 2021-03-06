(require 'package)

;; adds extra repositories to ELPA
;(add-to-list 'package-archives '("name" . "URL"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; package list

(setq package-list
      '(
	company
	zenburn-theme
	ido-vertical-mode
	ido-completing-read+
	markdown-mode
	flx
	flx-ido
	yasnippet
	yasnippet-snippets
	ess
	shrink-whitespace
	js2-mode
	rjsx-mode
	flycheck
	prettier-js
	tide
	pos-tip
	company-quickhelp
	pug-mode
	)
      )

;; initialize packages
(package-initialize)
(unless package-archive-contents (package-refresh-contents))
;(package-refresh-contents)


;; install missing packages
(dolist (package package-list) (unless (package-installed-p package) (package-install package)))
