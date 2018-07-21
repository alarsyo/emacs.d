;; Folders where to look for projects
(setq projectile-project-search-path
      (list (expand-file-name "code" my-homedir)))

;; Open dired when opening project
(setq projectile-switch-project-action #'projectile-find-dir)
(setq projectile-find-dir-includes-top-level t) ; include top level in list

(projectile-mode t)

(provide 'init-projectile)
