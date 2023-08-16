;; Set up the modus-themes package
(use-package modus-themes
  :ensure t
  :config
  (setq modus-themes-disable-other-themes t)
  (setq modus-themes-mixed-fonts t)
  (setq modus-themes-bold-constructs t)
  (setq modus-themes-italic-constructs t)
  (setq modus-themes-org-blocks 'gray-background)
  (setq modus-themes-prompts '(extrabold italic))
  (setq modus-themes-completions '((t . (extrabold underline))))
  (load-theme 'modus-operandi :no-confirm))

(provide 'ui-config-theme)
