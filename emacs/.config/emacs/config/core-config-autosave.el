(require 'core-config-locations)

;; Set the directory for autosave files
(setq auto-save-file-name-transforms `((".*" ,emacs-autosave-dir t)))
(setq auto-save-list-file-prefix emacs-autosave-dir)

;; Enable autosaving
(setq auto-save-default t)

;; Save a file after N seconds of idle time
(setq auto-save-timeout 20)

;; Save a file after N input events
(setq auto-save-interval 250)

;; Delete autosave files when a true save is done
(setq delete-auto-save-files t)

(provide 'core-config-autosave)
