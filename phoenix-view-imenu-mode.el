;;; phoenix-view-imenu-mode.el --- Minor mode for editing Phoenix view files

(defvar phoenix-view-imenu-mode-hook nil)

(defvar phoenix-view-imenu-generic-expression
  '(("Renders" "def[ \n\t]+render([ \n\t]*\"\\([^\"]+\\)" 1))
  "Imenu pattern for `phoenix-view-imenu-mode'.")

;;;###autoload
(define-minor-mode phoenix-view-imenu-mode
  "Minor mode for Phoenix view files imenu support."
  :init-value nil
  :global     nil
  :lighter    PhxVw
  (setq imenu-generic-expression
        (append imenu-generic-expression
                phoenix-view-imenu-generic-expression)))

(provide 'phoenix-view-imenu-mode)

;;; phoenix-view-imenu-mode.el ends here
