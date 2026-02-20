-- save, compile, run thun delete binary
vim.keymap.set("n", "<leader>r", [[:w<Enter>:!gcc % -lm<Enter>:!./a.out<Enter>:!rm a.out<CR>]])


-- Set global tab-related options
vim.opt_local.tabstop = 2      -- The number of spaces a <Tab> character displays as
vim.opt_local.shiftwidth = 2   -- The number of spaces to use for each step of (auto)indent
vim.opt_local.expandtab = true -- Use spaces instead of tabs
