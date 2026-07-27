vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})


-- folding
vim.opt.foldlevel = 1
vim.opt.foldlevelstart = 1
