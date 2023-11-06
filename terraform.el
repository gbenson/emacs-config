(setq load-path (append load-path '("~/.emacs-config/hcl-mode")))
(autoload 'hcl-mode "hcl-mode" "Major mode for Hashicorp Configuration Language files." t)
(setq auto-mode-alist
      (append
       (list
	'("\\.tf" . hcl-mode))
       auto-mode-alist))
