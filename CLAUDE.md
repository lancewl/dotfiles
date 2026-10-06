# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal macOS dotfiles managed with **GNU stow**. Each top-level directory is a stow package whose contents mirror `$HOME` (e.g. `lazyvim/.config/nvim/init.lua` → `~/.config/nvim/init.lua`). Files are symlinked, so editing here edits the live config.

```bash
stow lazyvim tmux zsh lazygit alacritty herdr   # link packages into $HOME
stow -R <pkg>                                   # restow after adding/removing files
```

New files must live under the package's mirrored path (`<pkg>/.config/...` or `<pkg>/.dotfile`), or stow won't place them correctly.

- `start.sh` — bootstrap: `brew bundle install --file=Brewfile`, oh-my-zsh + plugins (autosuggestions, syntax-highlighting, spaceship prompt), colorls.
- `Brewfile` — Homebrew dependencies; add new CLI tools here.
- `deprecated/` — old vim/vim-plug nvim/iTerm2 configs, kept for reference only. Don't edit or stow them.
- tmux plugins use TPM (`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`).

## Neovim (LazyVim)

`lazyvim/.config/nvim` is a LazyVim starter-based config:

- `lua/config/lazy.lua` bootstraps lazy.nvim, imports `lazyvim.plugins`, then `{ import = "plugins" }`.
- `lua/config/{options,keymaps,autocmds}.lua` extend LazyVim defaults (they don't replace them).
- `lua/plugins/*.lua` each return lazy.nvim specs that add plugins or override LazyVim ones, grouped by topic (`ai`, `coding`, `editor`, `lsp`, `ui`, `formatting`, ...).
- LazyVim extras are turned on in `lazyvim.json` (managed through `:LazyExtras`), not in `lazy.lua`. Use that file to check whether a language or feature extra is already on before you add a plugin spec yourself.
- `lazy-lock.json` pins plugin commits. Update it with `:Lazy update` or `:Lazy sync`, not by hand.
- Format Lua with `stylua` (`stylua.toml`: 2-space indent, 120 columns).

To check that the config loads: `nvim --headless "+Lazy! sync" +qa`. For a quick startup check, run `nvim --headless +qa`.

## Commits

Use conventional commits scoped by tool, e.g. `feat(nvim): ...`, `fix(tmux): ...`.
