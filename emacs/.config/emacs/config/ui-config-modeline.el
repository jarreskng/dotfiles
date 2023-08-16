;; Set up the 'telephone-line modeline

(use-package telephone-line
  :init
  (setq telephone-line-lhs
	'((evil   . (telephone-line-evil-tag-segment))
          (accent . (telephone-line-vc-segment))
          (nil    . (telephone-line-buffer-name-segment))))
  (setq telephone-line-rhs
	'((nil    . (telephone-line-major-mode-segment))
          (evil   . (telephone-line-airline-position-segment))))
  (telephone-line-mode t))

(provide 'ui-config-modeline)


