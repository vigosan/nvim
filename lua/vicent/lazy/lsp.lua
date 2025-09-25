return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            require("mason-lspconfig").setup({
                automatic_installation = true,
                -- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers
                ensure_installed = {
                    "cssls",
                    "emmet_ls",
                    "eslint",
                    "html",
                    "lua_ls",
                    "solargraph",
                    "standardrb",
                    "tailwindcss",
                    "ts_ls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            vim.lsp.config.cssls = {
                capabilities = capabilities,
            }
            vim.lsp.config.emmet_ls = {
                capabilities = capabilities,
                filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "scss", "typescriptreact" },
            }
            vim.lsp.config.eslint = {
                capabilities = capabilities,
            }
            vim.lsp.config.html = {
                capabilities = capabilities,
            }
            vim.lsp.config.lua_ls = {
                capabilities = capabilities,
            }
            vim.lsp.config.solargraph = {
                capabilities = capabilities,
            }
            vim.lsp.config.standardrb = {
                capabilities = capabilities,
            }
            vim.lsp.config.tailwindcss = {
                capabilities = capabilities,
                settings = {
                    tailwindCSS = {
                        classAttributes = { 'class', 'className', '.*Classes', 'tw' },
                        validate = true,
                        experimental = {
                            classRegex = {
                                ":class\\s+\"([^\"]*)\"",
                                ":[\\w-.#>]+\\.([\\w-]*)"
                            },
                        }
                    }
                }
            }
            vim.lsp.config.ts_ls = {
                capabilities = capabilities,
            }

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
