(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "https://orgmode.org/elpa/") t)

(setq package-archive-priorities
      '(("melpa-stable" . 10)
        ("org" . 10)
        ("gnu" . 5)
        ("melpa" . 0)))

;; Fetch package list on first init
(when (not package-archive-contents)
    (package-refresh-contents))

(package-install-selected-packages)

(provide 'init-package)
