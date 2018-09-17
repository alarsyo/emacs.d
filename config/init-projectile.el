(projectile-mode t)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(setq projectile-switch-project-action #'projectile-dired)

(provide 'init-projectile)
