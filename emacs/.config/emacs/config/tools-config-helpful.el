;; An alternative to the built-in Emacs help that provides
;; much more contextual information.
;; Repo: https://github.com/wilfred/helpful
(use-package helpful
  :bind
  ([remap describe-key]      . helpful-key)
  ([remap describe-command]  . helpful-command)
  ([remap describe-variable] . helpful-variable)
  ([remap describe-function] . helpful-callable))

(provide 'tools-config-helpful)
