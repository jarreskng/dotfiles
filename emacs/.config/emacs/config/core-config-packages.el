(require 'core-config-locations)
(require 'package)

;; Fill the list of package sources
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

;; Set up environment variables
(setq package-user-dir emacs-packages-dir)
(setq package-gnupghome-dir emacs-gnupg-dir)

;; Load packages and activate them
(package-initialize)

;; Update packages list if necessary
(unless package-archive-contents
  (package-refresh-contents))

;; Install 'use-package if necessary
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; Install 'delight if necessary
(unless (package-installed-p 'delight)
  (package-install 'delight))

;; Load delight for use-package
(require 'delight)

;; Install packages automatically
(require 'use-package-ensure)
(setq use-package-always-ensure t)

(provide 'core-config-packages)
