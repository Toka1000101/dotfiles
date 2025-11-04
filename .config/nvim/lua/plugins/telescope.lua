return {
	'nvim-telescope/telescope.nvim', branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make',
		},
	},
	config = function ()
		local telescope = require('telescope')
		telescope.load_extension('fzf')
		telescope.setup({
			defaults = {
				layout_strategy = 'horizontal',
				layout_config = { height = 0.99, width = 0.99 },
			},
			pickers = {
				buffers = {
					initial_mode = "normal",
				},
			},
		})
	end
}
