;;; exunit-imenu-mode.el --- Minor mode that adds describe support for exunit test files

(defvar exunit-imenu-mode-hook nil)

(defvar exunit-imenu-generic-expression
  '(("Describes" "describe[ \n\t]+\"\\([^\"]+\\)" 1))
  "Imenu pattern for `exunit-imenu-mode'.")

;;;###autoload
(define-minor-mode exunit-imenu-mode
  "Minor mode that adds describe support for exunit test files."
  :init-value nil
  :global     nil
  :lighter    PhxVw
  (setq imenu-generic-expression
        (append imenu-generic-expression
                exunit-imenu-generic-expression)))

(provide 'exunit-imenu-mode)

;;; exunit-imenu-mode.el ends here
