(require 'core-config-locations)

;; Set the directoru for backup files
(setq backup-directory-alist `((".*" . ,emacs-backups-dir)))

;; Enable backups
(setq make-backup-files t)

;; Always makes backup files by copying
(setq backup-by-copying t)

;; Always make numbered backups
(setq version-control t)

;; The number of oldest versions to keep when a new numbered backup is made
(setq kept-old-versions 2)

;; The number of newest versions to keep when a new numbered backup is made
(setq kept-new-versions 2)

;; Saving a file deletes excess backup versions silently
(setq delete-old-versions t)

(provide 'core-config-backups)
