local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

	{
  	"nvim-tree/nvim-tree.lua",
  	version = "*",
  	lazy = false,
		dependencies = {
    	"nvim-tree/nvim-web-devicons",
  	},
  	config = function()
    	require("nvim-tree").setup {}
  	end,
	},
	{
		'nvim-lualine/lualine.nvim',
		 dependencies = {
    	"nvim-tree/nvim-web-devicons",
  	}
	},
	{
		'rebelot/kanagawa.nvim'
	},
	{
 		'VonHeikemen/lsp-zero.nvim',
 		 branch = 'v3.x',
 			 dependencies = {
 		 		-- LSP Support
 		   {'neovim/nvim-lspconfig'},
 		   {'williamboman/mason.nvim'},
 		   {'williamboman/mason-lspconfig.nvim'},

 		   -- Autocompletion
 		   {'hrsh7th/nvim-cmp'},
 		   {'hrsh7th/cmp-nvim-lsp'},
 		   {'L3MON4D3/LuaSnip'},
 		 }
	},

	{
      'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'
  },
	{
  	"gennaro-tedesco/nvim-jqx",
  	ft = { "json", "yaml" },
	},
	{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
	}


}

require('lazy').setup(plugins)


