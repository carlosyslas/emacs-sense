(require 'use-package)

(use-package go-mode)

(use-package magit)

(use-package lsp-mode
  :commands lsp
  :init
  (add-hook 'go-mode-hook #'lsp))

(use-package lsp-ui
  :commands lsp-ui-mode)


(provide 'coding-sense)
