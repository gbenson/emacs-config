(setq load-path (append load-path '("~/.emacs-config/xslide-0.2.2")))

;; $Id: dot_emacs,v 1.1.1.1 2001/08/22 21:02:10 menteith Exp $

;; XSL mode
(autoload 'xsl-mode "xslide" "Major mode for XSL stylesheets." t)

;; Turn on font lock when in XSL mode
(add-hook 'xsl-mode-hook
	  'turn-on-font-lock)

(setq auto-mode-alist
      (append
       (list
	'("\\.fo" . xsl-mode)
	'("\\.xsl" . xsl-mode))
       auto-mode-alist))

;; Uncomment if using abbreviations
;; (abbrev-mode t)
