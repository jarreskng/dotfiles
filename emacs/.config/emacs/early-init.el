;; Memorize the default options of the garbage collector
(defvar gc-cons-threshold-default gc-cons-threshold)
(defvar gc-cons-percentage-default gc-cons-percentage)

;; Temporarily disable garbage collection during initialization
(setq gc-cons-percentaage .6)
(setq gc-cons-threashold most-positive-fixnum)

;; Disable parts of the interface before its initializtion
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tooltip-mode) (tooltip-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scrool-bar-mode) (scroll-bar-mode -1))

;; Supress annoying messages
(setq initial-scratch-message nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)

;; Supress yet another annoying message
;; https://lists.gnu.org/archive/html/bug-gnu-emacs/2012-12/msg00954.html
(put 'inhibit-startup-echo-area-message 'saved-value t)
(setq inhibit-startup-echo-area-message (user-login-name))

;; Print init-time after initialition
(add-hook 'after-init-hook
    (lambda ()
	(message (format "Init time: %s." (emacs-init-time)))))

;; Enable gargbage collection after startup
(add-hook 'emacs-startup-hook
    (lambda ()
	(setq gc-cons-threshold gc-cons-threshold-default)
	(setq gc-cons-percentage gc-cons-percentage-default)))

