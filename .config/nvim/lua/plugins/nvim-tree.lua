return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local function my_on_attach(bufnr)
			local api = require("nvim-tree.api")

			-- Default Enter (expand or open)
			vim.keymap.set("n", "<CR>", api.node.open.edit, { buffer = bufnr })

			-- Use `=` instead of `<leader><CR>` for smart open or cd into directory
			vim.keymap.set("n", "=", function()
				local node = require("nvim-tree.lib").get_node_at_cursor()
				if node.type == "directory" then
					api.tree.change_root_to_node(node)  -- Change root to directory
				else
					api.node.open.edit()  -- Open the file
				end
			end, { buffer = bufnr, noremap = true, silent = true })

			-- Optional: Backspace to go up one directory
			vim.keymap.set("n", "<BS>", api.tree.change_root_to_parent, { buffer = bufnr })
		end
		require("nvim-tree").setup {
			view = {
				side = 'right',
				preserve_window_proportions = false,
			},
			on_attach = my_on_attach
		}
	end,
}
