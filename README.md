# Emacs Configuration

This repository contains my personal Emacs configuration, designed for a modern, fast, and productive editing experience. The configuration is organized using Org Mode and leverages [straight.el](https://github.com/radian-software/straight.el) for package management.

## Features

- **Minimal startup time**: Optimized garbage collection and deferred loading.
- **Modern completion stack**: [vertico](https://github.com/minad/vertico), [orderless](https://github.com/oantolin/orderless), [corfu](https://github.com/minad/corfu), [consult](https://github.com/minad/consult), [embark](https://github.com/oantolin/embark).
- **UI enhancements**: Line numbers, pretty symbols, custom theme ([srcery](https://github.com/srcery-colors/srcery-emacs)), modeline ([spaceline](https://github.com/TheBB/spaceline)), icons, dashboard.
- **Editing tools**: [which-key](https://github.com/justbur/emacs-which-key), [rainbow-delimiters](https://github.com/Fanael/rainbow-delimiters), [avy](https://github.com/abo-abo/avy), [expand-region](https://github.com/magnars/expand-region.el), [move-text](https://github.com/emacsfodder/move-text).
- **Development tools**: [yasnippet](https://github.com/joaotavora/yasnippet), [flycheck](https://github.com/flycheck/flycheck), [lsp-mode](https://github.com/emacs-lsp/lsp-mode), [magit](https://github.com/magit/magit), [projectile](https://github.com/bbatsov/projectile).
- **Language support**: YAML, Docker, Terraform, and more.
- **Org Mode**: Enhanced with bullets, templates, clocking, and task management.
- **Custom functions and keybindings**: For navigation, commenting, window management, and more.
- **Auto-tangle**: Automatically updates `config.el` when `config.org` is saved.

## Structure

- `init.el`: Minimal startup file, bootstraps package manager and loads the main configuration.
- `config.org`: Main configuration in Org Mode, tangled to `config.el`.
- `config.el`: Tangled Emacs Lisp configuration.
- `LICENSE`: GNU General Public License v3.
- `backups/`, `auto-save-list/`, `eln-cache/`, etc.: Data and cache directories.

## Installation

1. **Clone the repository**:

   ```sh
   git clone https://github.com/kondanta/.emacs.d.git ~/.emacs.d