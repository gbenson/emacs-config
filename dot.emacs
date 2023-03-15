;;;; ~/.emacs

;;; Set some global options.
;;;

;; Configure the basic appearance of the frames
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(c-default-style "gnu")
 '(column-number-mode t)
 '(compilation-scroll-output 1)
 '(default-major-mode 'text-mode t)
 '(enable-local-variables t)
 '(font-lock-global-modes t)
 '(frame-title-format "%b" t)
 '(global-font-lock-mode t nil (font-lock))
 '(line-number-mode t)
 '(mouse-wheel-mode t nil (mwheel))
 '(query-user-mail-address nil)
 '(safe-local-variable-values '((show-trailing-whitespace)))
 '(show-trailing-whitespace t)
 '(tool-bar-mode nil nil (tool-bar))
 '(tooltip-mode nil nil (tooltip))
 '(user-mail-address "gary@inauspicious.org"))

(if (eq window-system 'x)
    (custom-set-variables
     '(show-trailing-whitespace t)
     '(safe-local-variable-values (quote ((show-trailing-whitespace))))))

;; Set my email address for things that want it.


;; Make the default major mode be text-mode


;; Enable wheelmouse support by default


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

;; Configure `outline-mode'
(load-file "~/.el/outline-mode.el")

;; Configure `i8-mode'
(load-file "~/.el/i8-mode.el")

;; Configure `sh-mode'
(setq sh-basic-offset 2)

;; Configure `javascript-mode'
(defun disable-tabs ()
  (setq indent-tabs-mode nil))
(add-hook 'js-mode-hook 'disable-tabs)

(setq auto-mode-alist
      (append
       (list
	'("\\.make" . makefile-mode)
	'("\\.gmk"  . makefile-mode))
       auto-mode-alist))

;(setq-default indent-tabs-mode nil)

(setq inhibit-splash-screen t)

(setq js-indent-level 2)
(setq lua-indent-level 2)

(if (eq window-system 'x)
    (set-scroll-bar-mode 'left))

(if (eq window-system 'x)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#E3E3EE"))))
 '(font-lock-builtin-face ((t (:foreground "blue4"))))
 '(font-lock-comment-face ((t (:foreground "#a57700" :italic t))))
 '(font-lock-constant-face ((t (:foreground "red3"))))
 '(font-lock-function-name-face ((t (:foreground "blue3"))))
 '(font-lock-keyword-face ((t (:foreground "purple4"))))
 '(font-lock-string-face ((t (:foreground "green4"))))
 '(font-lock-type-face ((t (:foreground "magenta4"))))
 '(font-lock-variable-name-face ((t (:foreground "blue3"))))
 '(header-line ((t (:inherit mode-line))))
 '(menu ((t (:background "#D6D6D6"))))
 '(mode-line ((t (:background "#C5C5C5" :foreground "black" :box (:line-width -1 :style released-button)))))
 '(rpm-spec-dir-face ((t (:foreground "green4"))) t)
 '(rpm-spec-doc-face ((t (:foreground "magenta4"))) t)
 '(rpm-spec-macro-face ((t (:foreground "purple4"))) t)
 '(rpm-spec-package-face ((t (:foreground "red3"))) t)
 '(scroll-bar ((t (:background "#D6D6D6"))))
 '(sh-heredoc-face ((t (:foreground "grey40"))) t))
)
