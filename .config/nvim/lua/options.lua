local o = vim.opt

-- GENERAL 
o.relativenumber = true
o.number = true
o.cursorline = true
o.autoread = true
o.autowrite = true

-- TAB SPACING 
o.shiftwidth = 2
o.shiftround = true
o.tabstop = 2

-- SEARCH OPTIONS
o.ignorecase = true
o.smartcase = true

-- USE CLIPBOARD (clipboard tool needs to be installed like xlip for X11)
o.clipboard = 'unnamedplus'

-- disable netrw for neovim, as advices on nvim-tree's github page
-- type :help nvim-tree-netrw for details
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

-- need to set mapleader before lazy
-- originally was located in mappings.lua
vim.g.mapleader = ' '

