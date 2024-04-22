-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/lua/nvim-tree.lua#L344
return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

    require("nvim-tree").setup({
      disable_netrw = true,
      view = {
        side = "right"
      },
      actions = {
        open_file = {
          quit_on_open = true,
        }
      },
      update_focused_file = {
        enable = true,
      }
    })
  end
}
