(load-theme 'wombat t)

;; Setup nyan cat progress bar
(setq nyan-animate-nyancat t)
(setq nyan-wavy-trail t)

;; Make nyan-mode a global mode to enable it on every file
(define-globalized-minor-mode my-global-nyan-mode nyan-mode
  (lambda () (nyan-mode t)))
(my-global-nyan-mode t)

(provide 'init-look)
