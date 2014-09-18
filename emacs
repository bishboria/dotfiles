;; Initialize package archives
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Type 'y' or 'n' instead of 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Ensure packages are installed before requiring
(defun ensure-installed(p)
  (when (not (package-installed-p p))
    (package-install p)))

;; Magit
(ensure-installed 'magit)
(global-set-key "\C-xg" 'magit-status)

;; emacs' exec-path is the same as $PATH. Good for OSX
;; when using Emacs.app
(exec-path-from-shell-initialize)

; Turn off the toolbar
(tool-bar-mode -1)

; Turn off the menu bar
(menu-bar-mode -1)

; Move between windows easier than c-x o
(global-set-key (kbd "C-<up>") 'windmove-up)
(global-set-key (kbd "C-<down>") 'windmove-down)
(global-set-key (kbd "C-<left>") 'windmove-left)
(global-set-key (kbd "C-<right>") 'windmove-right)

; Proof General
(load-file "/usr/local/ProofGeneral/generic/proof-site.el")

(put 'upcase-region 'disabled nil)

(when (executable-find "agda-mode")
  (load-file
   (let ((coding-system-for-read 'utf-8))
     (shell-command-to-string "agda-mode locate"))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-include-dirs (quote ("." "/Users/bishboria/Documents/programming/agda/agda-prelude/src")))
 '(custom-safe-themes (quote ("e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(display-time-24hr-format t)
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(safe-local-variable-values (quote ((eval progn (let ((coq-root-directory (when buffer-file-name (locate-dominating-file buffer-file-name ".dir-locals.el"))) (coq-project-find-file (and (boundp (quote coq-project-find-file)) coq-project-find-file))) (setq tags-file-name (concat coq-root-directory "TAGS") camldebug-command-name (concat coq-root-directory "dev/ocamldebug-coq")) (unless coq-project-find-file (setq compile-command (concat "make -C " coq-root-directory)) (setq compilation-search-path (cons coq-root-directory nil))) (when coq-project-find-file (setq default-directory coq-root-directory)))) (coq-prog-args "-emacs-U" "-I" "../cpdt/src")))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "apple" :family "DejaVu_Sans_Mono"))))
 '(agda2-highlight-datatype-face ((t (:foreground "blue"))))
 '(agda2-highlight-function-face ((t (:foreground "blue"))))
 '(agda2-highlight-postulate-face ((t (:foreground "blue"))))
 '(agda2-highlight-primitive-face ((t (:foreground "blue"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "blue"))))
 '(agda2-highlight-record-face ((t (:foreground "blue"))))
 '(proof-active-area-face ((t (:underline t))))
 '(proof-locked-face ((t (:weight bold)))))

(ensure-installed 'column-marker)
(require 'column-marker)

;; Show trailing whitespace. It's bloody annoying.
(setq-default show-trailing-whitespace t)

;; pl is prolog rather than perl, thank you.
(add-to-list 'auto-mode-alist '("\\.\\(pl\\|pro\\|lgt\\)" . prolog-mode))

(ensure-installed 'idris-mode)
(add-to-list 'load-path "/Users/bishboria/.emacs.d/idris-mode/")
(require 'idris-mode)
