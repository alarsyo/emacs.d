;; Folders where to look for projects
(setq projectile-project-search-path
      (list (expand-file-name "code/" my-homedir)))

(projectile-mode t)

(provide 'init-projectile)
