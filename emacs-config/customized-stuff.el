(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-include-dirs (quote ("." "/Users/bishboria/Documents/programming/agda/agda-prelude/src")))
 '(custom-safe-themes (quote ("e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(display-time-24hr-format t)
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(safe-local-variable-values (quote ((eval progn (let ((coq-root-directory (when buffer-file-name (locate-dominating-file buffer-file-name ".dir-locals.el"))) (coq-project-find-file (and (boundp (quote coq-project-find-file)) coq-project-find-file))) (setq tags-file-name (concat coq-root-directory "TAGS") camldebug-command-name (concat coq-root-directory "dev/ocamldebug-coq")) (unless coq-project-find-file (setq compile-command (concat "make -C " coq-root-directory)) (setq compilation-search-path (cons coq-root-directory nil))) (when coq-project-find-file (setq default-directory coq-root-directory)))) (coq-prog-args "-emacs-U" "-I" "../cpdt/src"))))
 '(visible-bell t))

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
