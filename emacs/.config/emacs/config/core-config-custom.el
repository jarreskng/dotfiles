(require 'core-config-locations)

;; Change the location of the custom-file
(setq custom-file (locate-user-emacs-file "custom.el"))

;; Load customization from the custom file
;;(load custom-file)

(provide 'core-config-custom)
