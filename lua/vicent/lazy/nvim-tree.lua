-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/lua/nvim-tree.lua#L344
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

    require("nvim-tree").setup({
      disable_netrw = true,
      sync_root_with_cwd = true,
      view = {
        number = true,
        side = "right",
        width = 36,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      update_focused_file = {
        enable = true,
      },
      filters = {
        dotfiles = true,
      },
      renderer = {
        highlight_git = true,
        icons = {
          glyphs = {
            git = {
              unstaged = "",
              staged = "",
              unmerged = "",
              renamed = "",
              deleted = "",
              untracked = "",
              ignored = "",
            },
          },
        },
      },
    })
  end,
}
