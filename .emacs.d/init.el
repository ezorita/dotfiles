;;;; Loads all emacs libraries.

;; define load path

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; this sets up packages
(load-library "packages")
(load-library "buffers")
(load-library "interface")
(load-library "keybindings")

;; set the current location
(setq calendar-latitude 41.401)
(setq calendar-longitude 2.164)
(setq calendar-location-name "Barcelona, Catalunya")

;; autocompletion
(setq tab-always-indent 'complete)

;; disable backup files
(setq make-backup-files nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ido-completing-read+ zenburn-theme ido-vertical-mode auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )