;; Folders where to look for projects
(setq projectile-project-search-path
      (list (expand-file-name "code/" my-homedir)))

(projectile-mode t)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(setq projectile-switch-project-action #'projectile-dired)

(provide 'init-projectile)
