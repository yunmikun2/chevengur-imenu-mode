;;; phoenix-router-imenu-mode.el --- Minor mode for editing Phoenix router.ex files

(defvar phoenix-router-imenu-mode-hook nil)

(defvar phoenix-router-imenu-generic-expression
  '(("Scopes" "scope[ \n\t]+\"\\([^\"]+\\)" 1)
    ("Pipelines" "pipeline[ \n\t]\\:\\([a-zA-Z0-9\\_]+\\)" 1)
    ("GET" "get[ \n\t]+\"\\([^\"]+\\)" 1)
    ("POST" "post[ \n\t]+\"\\([^\"]+\\)" 1)
    ("PATCH" "patch[ \n\t]+\"\\([^\"]+\\)" 1)
    ("PUT" "put[ \n\t]+\"\\([^\"]+\\)" 1)
    ("DELETE" "delete[ \n\t]+\"\\([^\"]+\\)" 1)
    ("Resources" "resources[ \n\t]+\"\\([^\"]+\\)" 1))
  "Imenu pattern for `phoenix-router-imenu-mode'.")

;;;###autoload
(define-minor-mode phoenix-router-imenu-mode
  "Minor mode for Phoenix router.ex files imenu support."
  :init-value nil
  :global     nil
  :lighter    PhxRt
  (setq imenu-generic-expression
        (append imenu-generic-expression
                phoenix-router-imenu-generic-expression)))

(provide 'phoenix-router-imenu-mode)

;;; phoenix-router-imenu-mode.el ends here
