;;; ~/.emacs.config/font-lock.el
;;; $Revision: 1.4 $
;;;
;;; Set up `rpm-mode' - rpm spec file mode
;;;

;; Override some colours
(custom-set-faces
 '(rpm-spec-dir-face
   ((t (:foreground "green4"))) t)
 '(rpm-spec-macro-face
   ((t (:foreground "purple4"))) t)
 '(rpm-spec-doc-face
   ((t (:foreground "magenta4"))) t)
 '(rpm-spec-package-face
   ((t (:foreground "red3"))) t))
