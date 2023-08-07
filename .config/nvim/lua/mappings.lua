local map = vim.api.nvim_set_keymap
local opts = {} 

vim.g.mapleader = ' '

-- telescope.nvim mappings
map('n', '<leader>ff', ':Telescope find_files<CR>',opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>',opts)
