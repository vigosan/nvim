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
            local lspconfig = require("lspconfig")

            lspconfig.cssls.setup({ capabilities = capabilities })
            lspconfig.emmet_ls.setup({
                capabilities = capabilities,
                filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "scss", "typescriptreact" },
            })
            lspconfig.eslint.setup({ capabilities = capabilities })
            lspconfig.html.setup({ capabilities = capabilities })
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.solargraph.setup({ capabilities = capabilities })
            lspconfig.standardrb.setup({ capabilities = capabilities })
            lspconfig.tailwindcss.setup({
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
            })
            lspconfig.ts_ls.setup({ capabilities = capabilities })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
