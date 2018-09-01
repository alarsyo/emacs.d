;; Load Tuareg installed from OPAM
(let ((tuareg-file (expand-file-name
                    ".opam/default/share/emacs/site-lisp/tuareg-site-file"
                    my-homedir)))
  (when (file-exists-p tuareg-file)
    (load tuareg-file)))

;; Load Merlin
(let ((opam-share
       (ignore-errors (car (process-lines "opam" "config" "var" "share")))))
  (when (and opam-share (file-directory-p opam-share))
    ;; Register Merlin
    (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
    (autoload 'merlin-mode "merlin" nil t nil)
    ;; Automatically start it in OCaml buffers
    (add-hook 'tuareg-mode-hook 'merlin-mode t)
    (add-hook 'caml-mode-hook 'merlin-mode t)
    ;; Use opam switch to lookup ocamlmerlin binary
    (setq merlin-command 'opam)))

;; Setup utop
(setq utop-command "opam config exec -- utop -emacs")
(setq utop-edit-command nil)

(add-hook 'tuareg-mode-hook 'utop-minor-mode)

(defun my-utop-mode-hook ()
  (define-key utop-mode-map [S-return] 'utop-eval-input-auto-end))
(add-hook 'utop-mode-hook 'my-utop-mode-hook)

(provide 'init-ocaml)
