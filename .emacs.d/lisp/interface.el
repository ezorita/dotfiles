;; INTERFACE

;; font and text
(set-default-font "Ubuntu Mono-11")

;; emacs menus and status bars
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-default-load-average nil)
(display-time-mode 1)

;; maximized window
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; startup screen
(setq inhibit-startup-screen t)

;; scroll window slowly
(setq scroll-conservatively 10000 scroll-step 1)

;; highlight current line (annoying in terminal)
(global-hl-line-mode t)

;; theme
(load-theme 'zenburn t)
