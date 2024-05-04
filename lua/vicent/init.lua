require("vicent.set")
require("vicent.remap")
require("vicent.lazy_init")

local autocmd = vim.api.nvim_create_autocmd

autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  callback = function(args)
    save_cursor = vim.fn.getpos(".")
    vim.cmd('silent! !mkdir -p %:p:h')
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
})
