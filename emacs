(setq inhibit-startup-message t)

;; melpa and gnu package archives seem like the best combo
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(package-initialize)

(defun load-config(name)
  (load-file (concat "~/.dotfiles/emacs-config/" name)))

;; emacs' exec-path is the same as $PATH
;; osx only?
(exec-path-from-shell-initialize)

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
; better file finder
; use C-spc to allow filtering of a result set
(ido-mode t)
; Avoid weird redraw errors after searching
(add-hook 'isearch-update-post-hook 'redraw-display)

;; Type 'y' or 'n' instead of 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

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

(global-set-key "\C-xg" 'magit-status)

; Move between windows easier than c-x o
(global-set-key (kbd "C-x <up>")    'windmove-up)
(global-set-key (kbd "C-x <down>")  'windmove-down)
(global-set-key (kbd "C-x <left>")  'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

;; Ensure packages are installed before requiring
(defun ensure-installed(p)
  (when (not (package-installed-p p))
    (progn
      (package-install p)
      (require p))))

(ensure-installed 'magit)
(ensure-installed 'column-marker)
(ensure-installed 'whitespace)

;; handy abbreviations for nerds
(define-abbrev-table 'global-abbrev-table '(

    ;; math/unicode symbols
    ("8all" "∀")
    ("8co"  "∘")
    ("8ex"  "∃")
    ("8in"  "∈")
    ("8nin" "∉")
    ("8inf" "∞")
    ("8r"   "→")
    ("8st"  "⊢")
    ("8ell" "…")

    ))

;; stop asking whether to save newly added abbrev when quitting emacs
(setq save-abbrevs nil)
;; turn on abbrev mode globally
(setq-default abbrev-mode t)

;; Languages
(load-file "/usr/local/ProofGeneral/generic/proof-site.el")
(when (executable-find "agda-mode")
  (load-file
   (let ((coding-system-for-read 'utf-8))
     (shell-command-to-string "agda-mode locate"))))

(ensure-installed 'idris-mode)
(add-to-list 'load-path "/Users/bishboria/.emacs.d/idris-mode/")

(setq twelf-root "/Applications/Twelf/")
(load (concat twelf-root "emacs/twelf-init.el"))

;; pl is prolog rather than perl, thank you.
(add-to-list 'auto-mode-alist '("\\.\\(pl\\|pro\\|lgt\\)" . prolog-mode))


;; customize variables, fonts, etc
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-include-dirs (quote ("."
                              "/Users/bishboria/Documents/programming/agda/agda-prelude/src"
                            ;;"/Users/bishboria/Documents/programming/agda/agda-stdlib/src"
                              )))
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(visible-bell t)
 '(fringe-mode 0 nil (fringe))
 '(completion-ignored-extensions (quote (".DS_Store" "~" ".glob" ".vo" ".o" ".hi"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "apple" :family "DejaVu_Sans_Mono"))))
 '(proof-active-area-face ((t (:underline t))))
 '(proof-locked-face ((t (:weight bold)))))
