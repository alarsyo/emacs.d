;;; init-package --- package installation

;;; Commentary:
;;; You can add a package to install to MY-PACKAGE-LIST

;;; Code:

(require 'package)

(defvar my-package-list
      '(evil magit evil-magit
        base16-theme
        projectile org
        flx-ido
        auctex auctex-latexmk
        go-mode)
      "List of packages to install.")

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

;; Prioritize stable and org repo over gnu/melpa unstable
(setq package-archive-priorities
      '(("melpa-stable" . 10)
        ("org" . 10)
        ("gnu" . 5)
        ("melpa" . 0)))

;; Fetch package list on first init
(when (not package-archive-contents)
    (package-refresh-contents))

;; Install packages from install list
(dolist (package my-package-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'init-package)

;;; init-package.el ends here
