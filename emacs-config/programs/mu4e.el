(add-to-list 'load-path "/usr/local/Cellar/mu/0.9.10/share/emacs/site-lisp/mu4e")

(require 'mu4e)

(setq mu4e-get-mail-command "offlineimap")
(setq mu4e-maildir (expand-file-name "~/.mail/bishboria"))
(setq mu4e-sent-folder "/[Google Mail].Sent Mail")
(setq mu4e-drafts-folder "/[Google Mail].Drafts")
(setq mu4e-trash-folder "/[Google Mail].Bin")
(setq mu4e-headers-date-format "%Y-%m-%d %H:%M")
(setq mu4e-view-show-addresses 't)
(setq mu4e-maildir-shortcuts
      '(("/INBOX" . ?i)
        ("/[Google Mail].Drafts" . ?d)
        ("/[Google Mail].Bin" . ?b)
        ("/[Google Mail].Sent Mail" . ?s)))
(setq mu4e-attachment-dir  "~/Downloads")
(setq message-kill-buffer-on-exit t)
(setq user-mail-address "bishboria@gmail.com"
      user-full-name  "Stuart Gale")
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-stream-type 'starttls
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)
