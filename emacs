;; ____________________________________________________________________________
;; Aquamacs custom-file warning:
;; Warning: After loading this .emacs file, Aquamacs will also load
;; customizations from `custom-file' (customizations.el). Any settings there
;; will override those made here.
;; Consider moving your startup settings to the Preferences.el file, which
;; is loaded after `custom-file':
;; ~/Library/Preferences/Aquamacs Emacs/Preferences
;; _____________________________________________________________________________
(package-initialize)

;; Type 'y' or 'n' instead of 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t)

;; emacs' exec-path is the same as $PATH
;; osx only?
;(exec-path-from-shell-initialize)

; Turn off the toolbar
(tool-bar-mode -1)
; Turn off the menu bar
(menu-bar-mode -1)
; Turn off scroll bars
(scroll-bar-mode -1)

(put 'upcase-region 'disabled nil)

; Show trailing whitespace, empty lines...
(setq whitespace-style '(face empty tabs trailing))
(global-whitespace-mode t)

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

;(ensure-installed 'whitespace)
;(ensure-installed 'evil)

;; Languages

;; Coq.
;; This setup needs to change with every installation of Proof General
(load-file "~/.emacs.d/proof-general-20180901.1708/generic/proof-site.el")

(when (executable-find "agda-mode")
  (load-file
   (let ((coding-system-for-read 'utf-8))
     (shell-command-to-string "agda-mode locate"))))

;; pl is prolog rather than perl, thank you.
(add-to-list 'auto-mode-alist '("\\.\\(pl\\|pro\\|lgt\\)" . prolog-mode))


;; customize variables, fonts, etc
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-highlight-face-groups (quote conor))
 '(completion-ignored-extensions (quote (".DS_Store" "~" ".glob" ".vo" ".o" ".hi" ".agdai")))
 '(describe-char-unidata-list
   (quote
    (name old-name general-category decomposition titlecase)))
 '(fringe-mode 0 nil (fringe))
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(haskell-process-log t)
 '(line-move-visual t)
 '(ns-antialias-text t)
 '(package-selected-packages
   (quote
    (ag haskell-mode evil idris-mode column-marker ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe vagrant-tramp vagrant use-package toc-org spacemacs-theme spaceline smooth-scrolling smeargle shm rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reveal-in-osx-finder restclient restart-emacs rbenv rainbow-mode rainbow-identifiers rainbow-delimiters quelpa popwin persp-mode pcre2el pbcopy paradox page-break-lines osx-trash orgit org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets open-junk-file neotree move-text monokai-theme mmm-mode markdown-toc magit-gitflow magit-gh-pulls macrostep lorem-ipsum linum-relative leuven-theme launchctl jabber info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flyspell helm-flx helm-descbinds helm-ag haskell-snippets google-translate golden-ratio gnuplot github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gist ghc gh-md flycheck-pos-tip flycheck-haskell flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-jumper evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu erc-yt erc-view-log erc-terminal-notifier erc-social-graph erc-image erc-hl-nicks elisp-slime-nav define-word cmm-mode clean-aindent-mode chruby bundler buffer-move bracketed-paste birds-of-paradise-plus-theme auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
 '(visible-bell t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(echo-area ((t (:stipple nil :strike-through nil :underline nil :slant normal :weight normal :width normal :family "FreeMono"))))
 '(font-lock-comment-face ((t (:foreground "#000000"))))
 '(proof-active-area-face ((t (:underline t))))
 '(proof-locked-face ((t (:weight bold))))
 '(mode-line ((t (:inherit freemono :background "grey75" :foreground "black" :box -1 :strike-through nil :underline nil :slant normal :weight ultra-bold :height 0.8 :width normal))))
 '(mode-line-inactive ((t (:inherit freemono :background "grey90" :foreground "grey20" :box (:line-width -1 :color "grey90") :strike-through nil :underline nil :slant normal :weight ultra-bold :height 0.8 :width normal)))))

(set-face-attribute 'default nil :font "FreeMono-14")
(set-frame-font "FreeMono-14" nil t)

(add-hook 'agda2-mode-hook
          '(lambda ()
            ; If you do not want to use any input method:
            (deactivate-input-method)
            (define-key agda2-mode-map (kbd "C-c ,") 'agda2-goal-and-context)
            (define-key agda2-mode-map (kbd "C-c .") 'agda2-goal-and-context-and-inferred)
            (define-key agda2-mode-map (kbd "C-c =") 'agda2-show-constraints)
            (define-key agda2-mode-map (kbd "C-c ?") 'agda2-show-goals)
            (define-key agda2-mode-map (kbd "<backtab>") 'eri-indent-reverse)))


(setq mac-allow-anti-aliasing t)
(setq require-final-newline t)
