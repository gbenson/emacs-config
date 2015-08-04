;;; ~/.el/outline-mode.el
;;;
;; Configure `outline-mode'
;;;

(defun gary-outline-mode-hook ()
  (hide-sublevels 1))

(add-hook 'outline-mode-hook 'gary-outline-mode-hook)
