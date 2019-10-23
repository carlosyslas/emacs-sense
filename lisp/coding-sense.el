(require 'use-package)

(use-package go-mode)

(use-package magit
  :config
  (bind-key "M-g" 'magit-status))

(use-package evil-magit
  :after (magit))

(use-package projectile
  :config
  (projectile-mode))

(use-package counsel-projectile
  :after (projectile hydra)
  :config
  (defhydra hydra-projectile (global-map "M-p")
    "Projectile"
    ("p" counsel-projectile-switch-project "Switch project")
    ("f" counsel-projectile-find-file "Find file")
    ;;("s" counsel-projectile-find-file "Search")
    ("b" counsel-projectile-switch-to-buffer "Switch to buffer")))

(use-package editorconfig
  :config
  (editorconfig-mode 1))

(use-package editorconfig-generate)

(use-package docker
  :bind (("M-c" . docker)))

;; Process runner
(use-package prodigy)

;; Javascript
(use-package tide
  :hook ((js-mode . tide-setup)))

(use-package prettier-js
  :hook ((js-mode . prettier-js-mode)))

;; Elixir
(use-package elixir-mode)
(use-package alchemist)

;; Python
(use-package elpy
  :init
  (elpy-enable))


(provide 'coding-sense)
