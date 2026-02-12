(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(save-place-mode)
(auto-save-mode -1)

(setq auto-save-default nil)
(setq desktop-path '("~/.emacs.d/desktop_save"))
(desktop-save-mode 1)

(global-hl-line-mode 1) 


(setq make-backup-files nil)




(provide 'basic)
