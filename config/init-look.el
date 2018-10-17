(load-theme 'dracula t)

(global-hl-line-mode t)

(set-face-attribute 'default nil
                    :family "Hack"
                    :height 105)

(add-to-list 'default-frame-alist
             (if (string= (user-login-name) "ma_9")
                 '(font . "Hack-10")
               '(font . "Hack-11")))

(provide 'init-look)
