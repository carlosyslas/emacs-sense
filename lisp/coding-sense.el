(require 'use-package)

(use-package go-mode)

(use-package magit)

(use-package projectile)

(use-package lsp-mode
  :commands lsp
  :init
  (add-hook 'go-mode-hook #'lsp))

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package tide
  :hook ((js-mode . tide-setup)))

(use-package editorconfig
  :config
  (editorconfig-mode 1))

(use-package editorconfig-generate)


(provide 'coding-sense)
