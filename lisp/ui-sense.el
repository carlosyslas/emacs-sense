(require 'use-package)

(use-package treemacs
  :after evil
  :config
  (setq
   treemacs-no-png-images t)
  (bind-key "M-t" 'treemacs))

(use-package treemacs-evil
  :after treemacs
  :config
  (evil-define-key 'treemacs treemacs-mode-map (kbd "l") 'treemacs-RET-action)
  (evil-define-key 'treemacs treemacs-mode-map (kbd "h") 'treemacs-TAB-action))

(defhydra hydra-frames (global-map "M-f")
  "Frames"
  ("o" other-frame "Other frame")
  ("n" make-frame-command "New frame")
  ("d" delete-frame "Delete frame"))

(use-package apropospriate-theme
  :config
  (load-theme 'apropospriate-dark t))

(set-face-attribute 'default nil :height 130)
(set-frame-font "Monaco")

(provide 'ui-sense)
