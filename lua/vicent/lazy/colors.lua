return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  priority = 1000,
  config = function()
    require('tokyonight').setup({
      disable_background = true,
      styles = {
        italic = false,
      },
    })

    vim.cmd.colorscheme "tokyonight-storm"
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
}
