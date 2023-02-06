;; improve start up speed


; stop the garbage collector from running as often
(setq gc-cons-threshold 100000000)

; turn off start up message
(setq inhibit-startup-message t)

; Turn off the toolbar
(tool-bar-mode -1)

; turn off tab bar
(tab-bar-mode -1)

; Turn off scroll bars
(scroll-bar-mode -1)

; turn off dialog boxes requiring a mouse
(setq use-dialog-box nil)

;; somehow this isn't visible on each
;; buffer window, but it is working...
; reload files if changed elsewhere
(global-auto-revert-mode t)

; follow sym links under version control
(setq vc-follow-symlinks t)

(savehist-mode)

(setq ring-bell-function 'ignore)

; allow the frame to be resized in pixels
; rather than character-sized jumps
(setq frame-resize-pixelwise t)
