;;; mix-config-imenu-mode.el --- Minor mode for editing Mix config files

(defvar mix-config-imenu-mode-hook nil)

(defvar mix-config-imenu-generic-expression
  '(("Configs" "config[ \n\t]+\\([^\n]+\\)" 1))
  "Imenu pattern for `mix-config-imenu-mode'.")

;;;###autoload
(define-minor-mode mix-config-imenu-mode
  "Minor mode for Mix config files imenu support."
  :init-value nil
  :global     nil
  :lighter    PhxVw
  (setq imenu-generic-expression
        (append imenu-generic-expression
                mix-config-imenu-generic-expression)))

(provide 'mix-config-imenu-mode)

;;; mix-config-imenu-mode.el ends here
