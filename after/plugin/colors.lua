function ColorMyPencils()
	vim.cmd.colorscheme("rose-pine")

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()

vim.api.nvim_create_user_command(
    'ColorMyPencils',
    ColorMyPencils,
    {}
)
