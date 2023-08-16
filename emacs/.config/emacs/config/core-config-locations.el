(defconst emacs-data-dir
  (or
   (getenv "EMACS_DATA_HOME")
   (expand-file-name "emacs" (getenv "XDG_DATA_HOME"))))

(defconst emacs-cache-dir
  (or (getenv "EMACS_CACHE_HOME")
      (expand-file-name "emacs" (getenv "XDG_CACHE_HOME"))))

(defconst emacs-gnupg-dir
  (or (getenv "GNUPGHOME")
      (expand-file-name "gnupg" (getenv "XDG_CONFIG_HOME"))))

(defconst emacs-packages-dir 
  (expand-file-name "packages" emacs-data-dir))

(defconst emacs-backups-dir 
  (expand-file-name "backups" emacs-data-dir))

(defconst emacs-autosave-dir 
  (expand-file-name "autosave" emacs-data-dir))

(provide 'core-config-locations)
