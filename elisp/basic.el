(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(save-place-mode)
(auto-save-mode -1)

(setq auto-save-default nil)
(setq desktop-path '("~/.emacs.d/desktop_save"))
;;(desktop-save-mode 1)

(global-hl-line-mode 1) 


(setq make-backup-files nil)



(use-package doom-themes
  :ensure t
  :config 
  (load-theme 'doom-acario-dark t))




;; My own header insert code
(defun my/insert_header(name systemp)
  (interactive (list (read-string "Header Name: ")
		     (y-or-n-p "System header(<>)? ")))
  (save-excursion
    (goto-char (point-min))
    (insert (if systemp
		(format "#include <%s>\n" name )
	      (format "#include \"%s\"\n" name)))))



(keymap-global-set "C-c i h" #'my/insert_header)




(provide 'basic)
