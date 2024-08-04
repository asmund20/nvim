-- Tab-greier
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Compile
vim.keymap.set("n", "<leader>r", [[:w<Enter>:!typst compile %<CR><CR>]])


--typst-preview
require 'typst-preview'.setup {
  invert_colors = 'always',
}

vim.keymap.set("n", "<leader>t", ":TypstPreview<CR>")

-- soft wrap
vim.opt.wrap = true
vim.opt.linebreak = true
