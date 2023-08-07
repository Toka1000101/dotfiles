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
		'nvim-telescope/telescope-fzf-native.nvim', build = 'make'
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
	}
}



require('lazy').setup(plugins)
require('telescope').load_extension('fzf')
