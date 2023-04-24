;;; ~/.emacs-config/font-lock.el
;;; $Revision: 1.4 $
;;;
;;; Set up `font-lock-mode' - syntax highlighting
;;;

;; We like font-lock so much that we want it on all the time.
;;
(custom-set-variables
 '(global-font-lock-mode t nil (font-lock))
 '(font-lock-global-modes t))

;; Override some basic faces
;;
(if (eq window-system 'x)
    (progn
     (custom-set-faces
      '(default
	 ((t (:background "#E3E3EE"))) t)
      '(menu
	((t (:background "#D6D6D6"))) t)
      '(mode-line
      ((t (:background "#C5C5C5" :foreground "black" :box
		       (:line-width -1 :style released-button)))) t)
      '(header-line
      ((t (:inherit mode-line))) t)
      '(scroll-bar ((t (:background "#D6D6D6")))))

     ;; Override some colours
     ;;
     (custom-set-faces
      '(font-lock-comment-face 
      ((t (:foreground "#a57700" :italic t))) t)
      '(font-lock-string-face 
      ((t (:foreground "green4"))) t)	; XEmacs default
      '(font-lock-keyword-face
      ((t (:foreground "purple4"))) t)	; Emacs default
      '(font-lock-builtin-face
      ((t (:foreground "blue4"))) t)	; XEmacs default
      '(font-lock-function-name-face
      ((t (:foreground "blue3"))) t)	; Emacs default
      '(font-lock-variable-name-face
      ((t (:foreground "blue3"))) t)	; Emacs default
      '(font-lock-type-face
      ((t (:foreground "magenta4"))) t)	; Emacs default
      '(font-lock-constant-face
      ((t (:foreground "red3"))) t)	; XEmacs default

      '(rpm-spec-dir-face
      ((t (:foreground "green4"))) t)
      '(rpm-spec-macro-face
      ((t (:foreground "purple4"))) t)
      '(rpm-spec-doc-face
      ((t (:foreground "magenta4"))) t)
      '(rpm-spec-package-face
      ((t (:foreground "red3"))) t)

      '(sh-heredoc-face
      ((t (:foreground "grey40"))) t))))

