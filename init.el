(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))

(add-hook 'c++-mode-hook 'display-line-numbers-mode)



(require 'elpaca)
(require 'basic)
(require 'lsp_mode)
(require 'second_brain)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-operandi-tinted))
 '(custom-safe-themes
   '("fef17d7da0754dfa1b35cb77562236cf03c849f514a5d9bc3bc2777552a4b599"
     default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
