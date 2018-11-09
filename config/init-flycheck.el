;;; flycheck --- Setup for flycheck-mode

;;; Commentary:
;;; This file sets up flycheck mode correctly

;;; Code:

(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

(add-hook 'c-mode-hook
          (lambda ()
            (setq flycheck-checker 'c/c++-gcc)
            (setq flycheck-gcc-language-standard "c99")
            (setq flycheck-gcc-pedantic t)
            (setq flycheck-gcc-warnings '("all" "extra" "error"))))

(provide 'init-flycheck)

;;; init-flycheck.el ends here
