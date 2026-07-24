-- save and run python file
vim.keymap.set("n", "<leader>r", [[:wa<Enter>:!python %<CR>]])

vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo[0][0].foldmethod = 'expr'
