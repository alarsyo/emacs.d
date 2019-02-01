(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook
          (lambda ()
            (setq-local whitespace-line-column 120)))

(setq gofmt-command "goimports")

(provide 'init-golang)
