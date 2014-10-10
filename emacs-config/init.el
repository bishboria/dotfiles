;; Type 'y' or 'n' instead of 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Ensure packages are installed before requiring
(defun ensure-installed(p)
  (when (not (package-installed-p p))
    (progn
      (package-install p)
      (require p))))
