# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration using lazy.nvim as the plugin manager. The configuration is written in Lua and follows a modular structure.

## Architecture

The configuration follows this structure:
- `init.lua` - Entry point that loads the main configuration
- `lua/vicent/init.lua` - Main configuration loader that includes settings, keymaps, and lazy.nvim initialization
- `lua/vicent/set.lua` - Vim options and settings
- `lua/vicent/remap.lua` - Custom key mappings
- `lua/vicent/lazy_init.lua` - Lazy.nvim plugin manager setup
- `lua/vicent/lazy/*.lua` - Individual plugin configurations

## Plugin Management

Uses lazy.nvim for plugin management:
- Plugin specifications are in `lua/vicent/lazy/*.lua`
- Plugin lockfile is `lazy-lock.json`
- Plugins are automatically loaded from the `vicent.lazy` spec

## Key Mappings

Leader key is set to `,` (comma).

### Core Navigation
- `<leader><leader>` - Switch to alternate buffer
- `<c-j/k/h/l>` - Window navigation

### Telescope (Fuzzy Finder)
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fs` - Grep string under cursor
- `<leader>fb` - List buffers
- `<leader>fh` - Help tags

### Testing (vim-test)
- `<leader>t` - Test nearest (cursor)
- `<leader>T` - Test current file
- `<leader>a` - Test suite (all tests)
- `<leader>l` - Test last
- `<leader>g` - Visit test file

### LSP
- `K` - Hover documentation
- `<leader>gd` - Go to definition
- `<leader>gr` - Go to references
- `<leader>ca` - Code actions
- `<leader>gf` - Format buffer

### Code Companion (AI Assistant)
- `<C-a>` - Code companion actions
- `<leader>c` - Toggle chat
- `gc` (visual mode) - Add selection to chat
- `:cc` - Command alias for CodeCompanion

## Language Support

The configuration includes LSP support for:
- CSS (`cssls`)
- HTML (`html`, `emmet_ls`)
- JavaScript/TypeScript (`ts_ls`, `eslint`)
- Lua (`lua_ls`)
- Ruby (`solargraph`, `standardrb`)
- Tailwind CSS (`tailwindcss`)

## Formatting and Linting

Uses none-ls.nvim with:
- **Formatters**: stylua (Lua), prettier (web files), standardrb (Ruby)
- **Linters**: eslint (JavaScript/TypeScript)
- Auto-formatting on `,gf`

## Development Workflow

1. Plugin management via lazy.nvim - plugins auto-install on startup
2. LSP servers auto-install via mason.nvim
3. Testing integrated via vim-test with neovim strategy
4. AI assistance via codecompanion with Copilot integration

## Configuration Guidelines

When modifying this configuration:
- Follow the existing modular structure in `lua/vicent/lazy/`
- Each plugin should have its own file in the lazy directory
- Keep key mappings consistent with the `,` leader key
- LSP configurations go in `lua/vicent/lazy/lsp.lua`
- Use lazy loading where appropriate to maintain startup performance