-- save, compile, run thun delete binary
vim.keymap.set("n", "<leader>r", [[:w<Enter>:!gcc %<Enter>:!./a.out<Enter>:!rm a.out<CR>]])
