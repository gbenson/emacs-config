;;;; ~/.emacs

;;; Set some global options.
;;;

;; Configure the basic appearance of the frames
(custom-set-variables
 '(frame-title-format "%b")
 '(column-number-mode t)
 '(line-number-mode t)
 '(blink-cursor nil)
 '(tool-bar-mode nil nil (tool-bar))
 '(tooltip-mode nil nil (tooltip))
 '(compilation-scroll-output 1))

(if (eq window-system 'x)
    (custom-set-variables
     '(show-trailing-whitespace t)
     '(safe-local-variable-values (quote ((show-trailing-whitespace))))))

;; Set my email address for things that want it.
(custom-set-variables
 '(user-mail-address "gary@inauspicious.org" t)
 '(query-user-mail-address nil))

;; Make the default major mode be text-mode
(custom-set-variables
 '(default-major-mode 'text-mode))

;; Enable wheelmouse support by default
(custom-set-variables
 '(mouse-wheel-mode t nil (mwheel)))

;; Make CTRL-Z undo (instead of iconifying)
(global-set-key "\C-z" 'undo)

;; Make pressing return indent as well
(global-set-key "\C-m" 'newline-and-indent)

;; Add a key for M-x goto-line
(global-set-key "\C-c\C-g" 'goto-line)

;;; Configure various modes.
;;;

;; Configure `text-mode' -- human readable text files
(load-file "~/.el/text-mode.el")

;; Configure `font-lock-mode' -- syntax highlighting
(load-file "~/.el/font-lock.el")

;; Configure `cc-mode' -- C, C++, ObjC and Java files
(load-file "~/.el/cc-mode.el")

;; Configure `xsl-mode' -- XSL files
(load-file "~/.el/xslide.el")

(setq auto-mode-alist
      (append
       (list
	'("\\.make" . makefile-mode)
	'("\\.gmk"  . makefile-mode))
       auto-mode-alist))

;(setq-default indent-tabs-mode nil)

(setq inhibit-splash-screen t)

(setq js-indent-level 2)
