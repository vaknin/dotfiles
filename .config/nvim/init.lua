require('plugins')
require('keymaps')
require('impatient')

local set = vim.opt -- Shorten function name

vim.o.clipboard = "unnamedplus" -- Enable clipboard
set.number = true
set.mouse = 'a'
set.ignorecase = true
set.smartcase = true
set.hlsearch = false
set.wrap = true
set.breakindent = true
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.undodir = vim.fn.expand('~/.vim/undodir')
set.undofile = true
vim.wo.relativenumber = true -- Relative line numbers
set.fillchars:append { eob = " " } -- Disable "~" on empty lines
set.termguicolors = true 
set.guifont = { "JetBrainsMono Nerd Font Mono", ":h11.5" }
set.laststatus=2

-- nvim-tree
vim.g.loaded_netrw = 1 
vim.g.loaded_netrwPlugin = 1 

-- Theme
vim.cmd('colorscheme nordfox') -- Colorscheme
-- vim.cmd('set cmdheight=0') -- Invisible cmd bar

-- Plugins setup
require("nvim-tree").setup()
require('lualine').setup()
require("bufferline").setup()
