# Neovim Configuration

Personal Neovim configuration using lazy.nvim and mason.nvim.

## Plugin Management (lazy.nvim)

### Basic Commands
```vim
:Lazy
```
Opens the lazy.nvim interface where you can:
- View installed plugins
- Update plugins
- Install/remove plugins
- View plugin status

### Update Commands
```vim
:Lazy update          " Update all plugins
:Lazy sync            " Update and clean plugins
:Lazy clean           " Remove unused plugins
:Lazy restore         " Restore plugins to lockfile state
```

### Plugin Installation
To add a new plugin, create or edit a file in `lua/vicent/lazy/` and restart Neovim. The plugin will be automatically installed.

## LSP Management (mason.nvim)

### Basic Commands
```vim
:Mason
```
Opens the mason interface where you can:
- Browse available LSP servers
- Install/uninstall LSP servers
- View installed servers status

### LSP Installation
```vim
:MasonInstall <server_name>     " Install specific LSP server
:MasonUninstall <server_name>   " Remove LSP server
:MasonUpdate                    " Update all installed servers
```

### Currently Configured LSP Servers
- `cssls` - CSS Language Server
- `emmet_ls` - Emmet Language Server
- `eslint` - ESLint Language Server
- `html` - HTML Language Server
- `lua_ls` - Lua Language Server
- `solargraph` - Ruby Language Server
- `standardrb` - Ruby Standard Formatter
- `tailwindcss` - Tailwind CSS Language Server
- `ts_ls` - TypeScript Language Server

### Add New LSP Server
1. Install via Mason: `:MasonInstall <server_name>`
2. Add configuration in `lua/vicent/lazy/lsp.lua`:
   ```lua
   vim.lsp.config.<server_name> = {
       capabilities = capabilities,
   }
   ```
3. Add to `ensure_installed` list in the same file

## Key Mappings Quick Reference

### Leader Key: `,`

#### File Navigation (Telescope)
- `,ff` - Find files
- `,fg` - Live grep
- `,fb` - List buffers

#### Testing (vim-test)
- `,t` - Test nearest
- `,T` - Test file
- `,a` - Test all

#### LSP
- `K` - Hover docs
- `,gd` - Go to definition
- `,gf` - Format code
- `,ca` - Code actions

#### AI Assistant (CodeCompanion)
- `Ctrl+a` - CodeCompanion actions
- `,c` - Toggle chat

## Troubleshooting

### Plugin Issues
1. Try `:Lazy sync` to update and clean plugins
2. Restart Neovim
3. Check `:Lazy` for any error messages

### LSP Issues
1. Check `:Mason` to ensure servers are installed
2. Use `:LspInfo` to see attached servers
3. Restart LSP: `:LspRestart`

### Reset Configuration
If something breaks completely:
1. Backup your config
2. Delete `~/.local/share/nvim/lazy/` (plugins)
3. Delete `~/.local/share/nvim/mason/` (LSP servers)
4. Restart Neovim to reinstall everything