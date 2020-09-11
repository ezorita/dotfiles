## Dotfiles

### emacs
Most things should work out of the box with emacs27+. JS modes require additional tools.

#### Javascript modes
Modes to autocomplete, autoformat and code browsing for Node.js and React.

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
