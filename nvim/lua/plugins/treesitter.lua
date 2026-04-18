return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	config = function()
		local status_ok, ts_configs = pcall(require, "nvim-treesitter.configs")
		if not status_ok then
			return
		end

		ts_configs.setup({
			ensure_installed = { "java", "lua", "vim", "vimdoc", "query", "cpp", "markdown", "markdown_inline" },
			sync_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
		})
	end
}
