-- Tab-greier
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Compile
vim.keymap.set("n", "<leader>r", [[:w<Enter>:!typst compile %<CR><CR>]])


require 'typst-preview'.setup {
  -- Setting this true will enable printing debug information with print()
  debug = false,

  -- Custom format string to open the output link provided with %s
  -- Example: open_cmd = 'firefox %s -P typst-preview --class typst-preview'
  open_cmd = nil,

  -- Setting this to 'always' will invert black and white in the preview
  -- Setting this to 'auto' will invert depending if the browser has enable
  -- dark mode
  --invert_colors = '{"rest": "always","image": "never"}',
  invert_colors = 'always',

  -- Whether the preview will follow the cursor in the source file
  follow_cursor = true,

  -- Provide the path to binaries for dependencies.
  -- Setting this will skip the download of the binary by the plugin.
  -- Warning: Be aware that your version might be older than the one
  -- required.
  dependencies_bin = {
    -- if you are using tinymist, just set ['typst-preview'] = "tinymist".
    -- ['typst-preview'] = "tinymist",
    ['typst-preview'] = nil,
    ['websocat'] = nil
  },

  -- This function will be called to determine the root of the typst project
  get_root = function(path_of_main_file)
    return vim.fn.fnamemodify(path_of_main_file, ':p:h')
  end,

  -- This function will be called to determine the main file of the typst
  -- project.
  get_main_file = function(path_of_buffer)
    return path_of_buffer
  end,
}

vim.keymap.set("n", "<leader>t", ":TypstPreview<CR>")

-- soft wrap
vim.opt.wrap = true
vim.opt.linebreak = true
