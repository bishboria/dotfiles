;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; See early-init.el for quick start up
; and convenience settings
;


(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; Type 'y' or 'n' instead of 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; upcasing region works on the current mark, which may be offscreen.
;; Turn it off.
(put 'upcase-region 'disabled nil)

; Show trailing whitespace, empty lines...
(setq whitespace-style '(face empty tabs trailing))
(global-whitespace-mode t)
(add-to-list 'before-save-hook 'delete-trailing-whitespace)

; turn tabs into spaces
(setq-default indent-tabs-mode nil)

; better file finder
; use C-spc to allow filtering of a result set
(ido-mode t)

; Avoid weird redraw errors after searching
(add-hook 'isearch-update-post-hook 'redraw-display)

;; Clear the output from a process running in the other window
;; Equivalent to the following sequence of keystrokes
;;     c-x o; c-x h; c-w; c-x o;
;; (defun clear-other-window
;;     (progn
;;       (other-window)
;;       (mark-whole-buffer)
;;       (kill-region)
;;       (other-window)))
(fset 'clear-other-window
   "\C-xo\C-xh\C-w\C-xo")
(global-set-key (kbd "C-x w") 'clear-other-window)

;; (global-set-key "\C-xg" 'magit-status)

; Move between windows easier than c-x o
(global-set-key (kbd "C-x <up>")    'windmove-up)
(global-set-key (kbd "C-x <down>")  'windmove-down)
(global-set-key (kbd "C-x <left>")  'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

(setq completion-ignored-extensions '(".DS_Store" "~" ".glob" ".vo" ".o" ".hi" ".agdai"))

(setq require-final-newline t)

;; Languages

(when (executable-find "agda-mode")
  (load-file
   (let ((coding-system-for-read 'utf-8))
     (shell-command-to-string "agda-mode locate"))))

(setq-default agda2-highlight-face-groups 'conor)

(set-face-attribute 'default nil :font "DejaVu Sans Mono-14")
(set-frame-font "DejaVu Sans Mono-14" nil t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(package-selected-packages '(haskell-mode moody spacemacs-theme solarized-theme)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



(use-package spacemacs-common
     :ensure spacemacs-theme
     :config
     (load-theme 'spacemacs-light t)
     (let ((line (face-attribute 'mode-line :underline)))
        (set-face-attribute 'mode-line          nil :overline   line)
        (set-face-attribute 'mode-line-inactive nil :overline   line)
        (set-face-attribute 'mode-line-inactive nil :underline  line)
        (set-face-attribute 'mode-line          nil :box        nil)
        (set-face-attribute 'mode-line-inactive nil :box        nil)
        (set-face-attribute 'mode-line-inactive nil :background "#f9f2d9")))

(use-package moody
      :config
      (setq x-underline-at-descent-line t)
      (moody-replace-mode-line-buffer-identification)
      (moody-replace-vc-mode)
      (moody-replace-eldoc-minibuffer-message-function))
