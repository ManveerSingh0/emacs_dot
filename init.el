(require 'org)


(org-babel-load-file
	(expand-file-name "config.org" user-emacs-directory))
(put 'magit-edit-line-commit 'disabled nil)
