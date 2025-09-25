return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "github/copilot.vim"
  },
  config = function()
    require("codecompanion").setup({
      adapters = {
        http = {
          copilot = function()
            return require("codecompanion.adapters").extend("copilot", {})
          end,
        },
      },
      strategies = {
        chat = {
          adapter = "copilot",
        },
        inline = {
          adapter = "copilot",
        },
        agent = {
          adapter = "copilot",
        },
      },
      schema = {
        model = {
          default = "claude-3.5-sonnet",
        },
      }
    })

    vim.keymap.set("n", "<C-a>", "<cmd>CodeCompanionActions<cr>", {})
    vim.keymap.set("v", "<C-a>", "<cmd>CodeCompanionActions<cr>", {})
    vim.keymap.set("n", "<leader>c", "<cmd>CodeCompanionChat Toggle<cr>i", {})
    vim.keymap.set("v", "<leader>c", "<cmd>CodeCompanionChat Toggle<cr>i", {})
    vim.keymap.set("v", "gc", "<cmd>CodeCompanionChat Add<cr>", {})

    vim.cmd([[cab cc CodeCompanion]])
  end,
}
