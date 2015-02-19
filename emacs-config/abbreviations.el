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
