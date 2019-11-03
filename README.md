# Dap mode pytest test project

Make sure you have pytest installed. Python3 is used in this project, so you can install pytest via `python3 -m pip install pytest`

## Emacs config

Emacs's config is under `{root}/config.el`.

You might need to set `dap-python-executable to python3`

## Reproduce

### python run

- In emacs

  1. toggle dap breakpoint on `main.py` line 4.
  2. dap-debug -> My app

  Working but the compilation buffer (server log) will disappear.

- In vscode

  1. toggle breakpoint on `main.py` line 4.
  2. Select `python main` in the debug panel and run.

  Working.

### pytest run

- In emacs

  1. toggle dap breakpoint on `test/test_app.py` line 7
  2. dap-debug -> My app

  Not working

- In vscode

  1. toggle breakpoint on `test/test_app.py` line 7
  2. Select `pytest test_app` in the debug panel and run.

  Working
