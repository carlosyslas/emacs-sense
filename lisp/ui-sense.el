(require 'use-package)

(use-package treemacs
  :after evil
  :config
  (setq
   treemacs-no-png-images t))

(use-package treemacs-evil
  :after treemacs
  :config
  (evil-define-key 'treemacs treemacs-mode-map (kbd "l") 'treemacs-RET-action)
  (evil-define-key 'treemacs treemacs-mode-map (kbd "h") 'treemacs-TAB-action))

(use-package kaolin-themes
  :config
  (load-theme 'kaolin-bubblegum))

(set-face-attribute 'default nil :height 130)
(set-frame-font "Monaco")

(provide 'ui-sense)
