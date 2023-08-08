local map = vim.api.nvim_set_keymap
local keymap = vim.keymap.set
local g = vim.g
local opts = {} 

vim.g.mapleader = ' '

-- telescope.nvim mappings
keymap('n', '<leader>ff', ':Telescope find_files<CR>',opts)
keymap('n', '<leader>fg', ':Telescope live_grep<CR>',opts)

-- nvim-tree mappings
keymap('n', '<leader>ft', ':NvimTreeToggle<CR>',opts)

-- map hjkl to jkl; in normal and visual modes
local modes = {'n','v'}
keymap(modes,';','l',opts)
keymap(modes, 'l', 'k',opts)
keymap(modes, 'k', 'j',opts)
keymap(modes, 'j', 'h',opts)

-- shorcuts to change default options and options in options.lua
g.isRelativeNumber = true

function toggleRelativeNumber()
	g.isRelativeNumber = not g.isRelativeNumber
	vim.opt.relativenumber = not g.isRelativeNumber
end

keymap('n','<leader>rn', toggleRelativeNumber,opts)

