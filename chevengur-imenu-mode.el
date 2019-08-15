;;; chevengur-imenu-mode.el --- Minor mode for imenu helpers in Phoenix project

(defvar chevengur-imenu-mode-hook nil)

;;;###autoload
(define-minor-mode chevengur-imenu-mode
  "Minor mode for imenu helpers in Phoenix project."
  :init-value nil
  :global     nil
  (when (string-equal (buffer-name) "router.ex")
    (phoenix-router-imenu-mode +1))
  (when (string-suffix-p "_view.ex" (buffer-name))
    (phoenix-view-imenu-mode +1))
  (when (string-suffix-p "_test.exs" (buffer-name))
    (exunit-imenu-mode +1))
  (when (or (string-equal "config.exs" (buffer-name))
            (string-match-p "config\\/.*\\.exs" (buffer-file-name)))
    (mix-config-imenu-mode +1)))

(provide 'chevengur-imenu-mode)

;;; chevengur-imenu-mode.el ends here
