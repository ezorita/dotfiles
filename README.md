## Dotfiles
### TODO:
- Set up flycheck for Python with flake8
- Set up code navigation for Python (included in python.el?) https://www.emacswiki.org/emacs/PythonProgrammingInEmacs

### emacs
Most things should work out of the box with emacs27+. JS modes require additional tools.

#### Javascript modes
Modes to autocomplete, autoformat and code navigation for Node.js and React.

##### Requires
- emacs27+
- typescript: `npm install -g typescript`
- eslint: `npm install -g eslint`
- prettier: `npm install -g prettier`

##### Prettier settings
```lisp
(setq prettier-js-args '(
     "--print-width" "78"))
```
