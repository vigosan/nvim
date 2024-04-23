return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  config = function()
    require("tokyonight").setup({
      style = "storm",
      transparent = true,
      disable_background = true,
    })

    vim.cmd.colorscheme("tokyonight")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
