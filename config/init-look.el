(setq nyan-animate-nyancat t)
(setq nyan-wavy-trail t)

(define-globalized-minor-mode my-global-nyan-mode nyan-mode
  (lambda () (nyan-mode t)))

(my-global-nyan-mode t)

(provide 'init-look)
