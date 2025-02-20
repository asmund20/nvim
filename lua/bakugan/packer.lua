local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use "williamboman/mason.nvim"
use "williamboman/mason-lspconfig.nvim"


use {
    "VonHeikemen/lsp-zero.nvim", branch = "v4.x"
}
use "neovim/nvim-lspconfig"
use "hrsh7th/cmp-nvim-lsp"
use "hrsh7th/nvim-cmp"

use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
}

use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
}

use ({
	'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end
})

use {
  'chomosuke/typst-preview.nvim',
  --tag = 'v0.3.*',
  run = function() require 'typst-preview'.update() end,
}

use 'm4xshen/autoclose.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use({
    "stevearc/conform.nvim",
    config = function()
    require("conform").setup()
    end,
})

if packer_bootstrap then
    require("packer").sync()
end

use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

end)
