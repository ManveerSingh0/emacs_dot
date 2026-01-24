(use-package eglot
  :ensure (:wait t)
  :hook
  (c++-mode . eglot-ensure))


(use-package company
  :ensure t
  :hook
  (c++-mode . company-mode))



(use-package flymake
  :ensure t)

(use-package jsonrpc
  :ensure t)
(use-package project
  :ensure t) 



(provide 'eglot)
