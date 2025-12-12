local mapkey = vim.keymap.set
local g = vim.g
local opts = {}

-- telescope.nvim mappings
local builtin = require('telescope.builtin')
mapkey('n', '<leader>ff', builtin.find_files,{})
mapkey('n', '<leader>fg', builtin.live_grep,{})
mapkey('n', '<C-p>', builtin.git_files,{})
mapkey('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true })
mapkey('n', '<leader>fb', '<cmd>Telescope buffers<CR>')

-- nvim-tree mappings
mapkey('n', '<leader>ft', ':NvimTreeToggle<CR>',opts)

-- map hjkl to jkl; in normal and visual modes
local modes = {'n','v'}
mapkey(modes,';','l',opts)
mapkey(modes, 'l', 'k',opts)
mapkey(modes, 'k', 'j',opts)
mapkey(modes, 'j', 'h',opts)

-- shorcuts to change default options and options in options.lua
g.isRelativeNumber = false

function toggleRelativeNumber()
	g.isRelativeNumber = not g.isRelativeNumber
	vim.opt.relativenumber = not g.isRelativeNumber
end

mapkey('n','<leader>rn', toggleRelativeNumber,opts)

-- window navigation
mapkey('n', '<leader>;', '<C-w>l', {noremap = true})
mapkey('n', '<leader>l', '<C-w>k', {noremap = true})
mapkey('n', '<leader>k', '<C-w>j', {noremap = true})
mapkey('n', '<leader>j', '<C-w>h', {noremap = true})

