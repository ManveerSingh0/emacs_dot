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


(set-face-attribute 'default nil
		    :font "Geist Mono" 
		    :height 130)

(set-face-attribute 'variable-pitch nil
		    :font "Geist Mono" 
		    :height 130)

(set-face-attribute 'fixed-pitch nil
		    :font "Geist Mono" 
		    :height 130)


;; use-package with Elpaca:
(use-package dashboard
  :elpaca t
  :config
  (setq dashboard-footer-messages nil)

  (setq dashboard-banner-logo-title " The world doesn't remember the mistakes you made; it remembers whether you kept walking. And you are walking. A little messy, a little tired — but walking.")
  (setq dashboard-startup-banner (file-truename "~/.emacs.d/images/jb.png"))
  (setq dashboard-image-banner-max-height 300)
  (setq dashboard-image-banner-max-width 300)


  (add-hook 'elpaca-after-init-hook #'dashboard-insert-startupify-lists)
  (add-hook 'elpaca-after-init-hook #'dashboard-initialize))

(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))




(provide 'basic)
