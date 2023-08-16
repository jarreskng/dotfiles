(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

(let ((default-directory (locate-user-emacs-file "config/")))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

(require 'core-config)
(require 'mode-config)
(require 'ui-config)
(require 'tools-config)

