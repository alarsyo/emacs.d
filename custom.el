(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(package-selected-packages
   (quote
    (markdown-mode auctex-latexmk auctex helm projectile nyan-mode org company-irony irony dockerfile-mode company company-go go-eldoc utop go-mode magit rust-mode)))
 '(safe-local-variable-values
   (quote
    ((eval local-set-key
           (kbd "C-c C-c")
           (function spot/execute-test))
     (eval defun spot/execute-test nil "execute the current file through ../run"
           (interactive)
           (shell-command
            (concat "cd ..; ./run "
                    (buffer-file-name)
                    " &")))
     (c-default-style . "gnu")
     (magit-branch-adjust-remote-upstream-alist
      ("origin/next" . "/"))
     (whitespace-style face empty trailing lines-tail)
     (whitespace-action auto-cleanup)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
