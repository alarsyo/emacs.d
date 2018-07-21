;; Remove toolbars as early as possible
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(defvar my-homedir (getenv "HOME")
  "User's home directory")

;; File that stores custom variables
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Load rest of config
(defvar my-config-dir
  (expand-file-name "config" user-emacs-directory))
(add-to-list 'load-path my-config-dir)

(require 'init-package)
(require 'init-base)
(require 'init-look)
(require 'init-magit)
(require 'init-ocaml)
