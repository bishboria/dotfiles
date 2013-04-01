; Turn off the toolbar
(tool-bar-mode -1)

; Proof General
(load-file "/usr/local/ProofGeneral/generic/proof-site.el")

; irc
(global-set-key "\C-ceb" (lambda () (interactive)
                                (erc :server "irc.freenode.net" :port "6667"
                                     :nick "bishboria")))
; join these channels automatically when connecting to freenode
(setq erc-autojoin-channels-alist '(("freenode.net" "#emacs" "#haskell" "#idris" "#agda" "##logic")))

(put 'upcase-region 'disabled nil)
