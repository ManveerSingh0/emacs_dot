(use-package org-roam
  :ensure t
  :init
  (setq org-roam-directory (file-truename "/media/hardisk/second_brain/"))
  :bind
  (("C-c n i" . org-roam-node-insert)
   ("C-c n f" . org-roam-node-find)
   ("C-c n c" . org-roam-capture)))



(add-hook 'org-mode-hook 'flymake-mode)

(provide 'second_brain)
