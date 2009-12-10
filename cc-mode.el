;;; ~/.el/cc-mode.el
;;; $Revision: 1.2 $
;;;
;;; Configure `cc-mode' - C, C++, ObjC and Java files
;;;
(custom-set-variables
 '(c-default-style "gnu"))


;; Switch buffers between C and H files
;;
(defun c-switch-c-h ()
  "Switch to the corresponding .c or .h file."
  (interactive)
  (let ((n (buffer-name)))
    (cond ((string-match "\\.h$" n)
	   (find-file (replace-match ".c" t t n)))
	  ((string-match "\\.c$" n)
	   (find-file (replace-match ".h" t t n)))
	  (t
	   (error "%s is neither .h or .c" n)))))

;; Define function to initialise C-mode
;;
(defun gary-c-mode-common-hook ()
  "Apply various settings when in C mode"
  ; Turn on hungry delete
  (c-toggle-hungry-state t)
  ; Turn on auto newline
  ;(c-toggle-auto-state t)
  ; Turn on auto-fill. C-mode limits this to sensible areas.
  (auto-fill-mode t)
  ; Make `C-x c' switch from C to H and vice versa.
  (define-key c-mode-base-map "\C-xc" 'c-switch-c-h))

(add-hook 'c-mode-common-hook 'gary-c-mode-common-hook)
