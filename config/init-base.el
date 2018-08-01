;; Only display lines that are too long
(setq whitespace-style '(face lines-tail))

;; Don't use tabs for indentation
(setq-default indent-tabs-mode nil)

;; Stop making noises
(setq visible-bell t)

;; Always scroll buffer under cursor
(setq mouse-wheel-follow-mouse t)

;; Line numbers on left side of buffer
(global-display-line-numbers-mode t)

;; Display column number as well
(setq column-number-mode t)

;; Disable backups and autosaves
(setq make-backup-files nil)
(setq auto-save-default nil)

(provide 'init-base)
