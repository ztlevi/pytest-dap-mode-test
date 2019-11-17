;;; ~/Developer/Github/pytest_tutorial/1.el -*- lexical-binding: t; -*-

(require 'dap-python)

(require 'dap-go)

(dap-register-debug-template
 "My App test"
 (list :type "python"
       :request "launch"
       :cwd "~/Developer/Github/pytest-dap-mode-test"
       :args "-sv"
       :program "tests/test_app.py"
       :module "pytest"
       :name "My App test"))

(dap-register-debug-template
 "My App"
 (list :type "python"
       :args ""
       :cwd "~/Developer/Github/pytest-dap-mode-test"
       :env '(("DEBUG" . "1"))
       :program "main.py"
       :request "launch"
       :name "My App"))

(dap-mode 1)
(dap-ui-mode 1)
;; enables mouse hover support
(dap-tooltip-mode 1)
;; use tooltips for mouse hover
;; if it is not enabled `dap-mode' will use the minibuffer.
(tooltip-mode 1)

(add-hook 'dap-stopped-hook
          (lambda (arg) (call-interactively #'dap-hydra)))
