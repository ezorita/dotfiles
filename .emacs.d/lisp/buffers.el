;; Buffer and buffer browsing configuration

;; LOAD PACKAGES
(require 'ido-vertical-mode)
(require 'ido-completing-read+)
(require 'flx-ido)


;; AUTOSAVE AND BACKUP FILES
;; disable backup files
(setq backup-inhibited t)
(setq make-backup-files nil)
;; disable auto-save
(setq auto-save-default nil)


;; ENABLE IDO MODE
(ido-mode 1)
(ido-everywhere 1)
(ido-vertical-mode 1)
(ido-ubiquitous-mode 1) ;this is ido-completing-read+

;; IDO VERTICAL MODE
;; Use only C-n and C-p to browse on IDO list.
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-vertical-pad-list t)

;; FUZZY TEXT MATCHING IN IDO (flx)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
