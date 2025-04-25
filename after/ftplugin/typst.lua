-- Tab-greier
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Compile
vim.keymap.set("n", "<leader>r", [[:wa<Enter>:!typst compile %<CR><CR>]])

-- Normal mode preview
vim.keymap.set("n", "<leader>t", ":TypstPreview<CR>")
-- Slide mode preview
vim.keymap.set("n", "<leader>ts", ":TypstPreview slide<CR>")
-- Sync cursor
vim.keymap.set("n", "<leader>tc", ":TypstPreviewSyncCursor<CR>")

-- soft wrap
vim.opt.wrap = true
vim.opt.linebreak = true
