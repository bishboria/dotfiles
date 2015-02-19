(setq inhibit-startup-message t)

(defun load-config(name)
  (load-file (concat "~/.dotfiles/emacs-config/" name)))

(load-config "package-archives.el")

;; emacs' exec-path is the same as $PATH
(exec-path-from-shell-initialize)


(load-config "global-settings.el")
(load-config "init.el")
(load-config "keybindings.el")
(load-config "packages.el")
(load-config "abbreviations.el")


;; Languages
(load-config "languages/proof-general.el")
(load-config "languages/agda.el")
(load-config "languages/idris.el")
(load-config "languages/twelf.el")
(load-config "languages/prolog.el")


;; customize variables, fonts, etc
(load-config "customized-stuff.el")


;; programs
(load-config "programs/mu4e.el")
