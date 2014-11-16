;; Type 'y' or 'n' instead of 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Ensure packages are installed before requiring
(defun ensure-installed(p)
  (when (not (package-installed-p p))
    (progn
      (package-install p)
      (require p))))

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
