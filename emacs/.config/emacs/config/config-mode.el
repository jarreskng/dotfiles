(require 'config-packages)

(use-package org
  :ensure t
  :mode ("\\.org\\'" . org-mode))

(use-package yaml-mode
  :ensure t
  :mode ("\\.yml\\'" . yaml-mode))

(use-package json-mode
  :ensure t
  :mode ("\\.json\\'" . json-mode))

(provide 'config-mode)
