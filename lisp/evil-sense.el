(require 'use-package)

(use-package evil
  :config
  (define-key evil-normal-state-map (kbd ";") 'evil-ex)
  (evil-mode 1))

(provide 'evil-sense)
