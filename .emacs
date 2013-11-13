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

; irc
(global-set-key "\C-ceb" (lambda () (interactive)
                                (erc :server "irc.freenode.net" :port "6667"
                                     :nick "bishboria")))
; join these channels automatically when connecting to freenode
(setq erc-autojoin-channels-alist '(("freenode.net" "#darcs" "#haskell" "#idris" "#agda" "##logic" "#coq" "##hott")))
(setq erc-hide-list '("JOIN" "PART" "QUIT"))

(put 'upcase-region 'disabled nil)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (executable-find "agda-mode")
  (load-file
   (let ((coding-system-for-read 'utf-8))
     (shell-command-to-string "agda-mode locate"))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-include-dirs (quote ("." "/Users/bishboria/Documents/programming/agda/lib-0.7/src")))
 '(display-time-24hr-format t)
 '(haskell-mode-hook (quote (turn-on-haskell-indentation))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'column-marker)

(setq-default show-trailing-whitespace t)

;; pl is prolog rather than perl, thank you.
(add-to-list 'auto-mode-alist '("\\.\\(pl\\|pro\\|lgt\\)" . prolog-mode))
