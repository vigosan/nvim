return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        -- Adding this as a dependency because some of the default lsps were removed
        -- See https://github.com/nvimtools/none-ls.nvim/discussions/81 for more information
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- formatting
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier.with {
                    filetypes = {
                        "html",
                        "css",
                        "scss",
                        "javascript",
                        "typescript",
                        "json",
                        "yaml",
                        "markdown",
                    },
                },
                require("none-ls.formatting.standardrb"),

                -- diagnostics
                require("none-ls.diagnostics.eslint"),
                -- require("none-ls.diagnostics.standardrb")
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
    end,
}
