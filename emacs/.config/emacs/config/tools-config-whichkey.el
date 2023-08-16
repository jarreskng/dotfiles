;; A minor mode for Emacs that displays the key bindings following
;; your currently entered incomplete command (a prefix) in a popup.
;; Repo: https://github.com/justbur/emacs-which-key
(use-package which-key
  :delight (which-key-mode)
  :custom
  (which-key-idle-delay 0.5)
  (which-key-add-column-padding 4)
  (which-key-min-display-lines 7)
  (which-key-max-description-length 32)
  (which-key-compute-remaps t)
  (which-key-allow-evil-operators t)
  :hook
  (emacs-startup . which-key-mode))

(provide 'tools-config-whichkey)
