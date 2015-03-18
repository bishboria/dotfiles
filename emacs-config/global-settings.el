(setq inhibit-startup-message t)

; Turn off the toolbar
(tool-bar-mode -1)

; Turn off the menu bar
(menu-bar-mode -1)

; Turn off scroll bars
(scroll-bar-mode -1)

(put 'upcase-region 'disabled nil)

; Show trailing whitespace, empty lines...
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

; turn tabs into spaces
(setq-default indent-tabs-mode nil)
