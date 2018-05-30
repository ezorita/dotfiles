;; Buffer and buffer browsing configuration

;; LOAD PACKAGES
(require 'ido-vertical-mode)
(require 'ido-completing-read+)

;; ENABLE IDO MODE
(ido-mode 1)
(ido-vertical-mode 1)
(ido-ubiquitous-mode 1) ;this is ido-completing-read+

;; IDO VERTICAL MODE
;; Use only C-n and C-p to browse on IDO list.
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-vertical-pad-list t)
