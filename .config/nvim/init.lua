require('plugins')
require('keymaps')
--require('impatient')

vim.o.clipboard = "unnamedplus" -- Enable clipboard
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.undodir = vim.fn.expand('~/.vim/undodir')
vim.opt.undofile = true
vim.wo.relativenumber = true -- Relative line numbers
vim.opt.fillchars:append { eob = " " } -- Disable "~" on empty lines

-- nvim-tree
vim.opt.termguicolors = true 
vim.g.loaded_netrw = 1 
vim.g.loaded_netrwPlugin = 1 

-- Theme
vim.cmd('colorscheme nordfox') -- Colorscheme
--vim.cmd('highlight Normal ctermbg=NONE guibg=NONE') -- Transparent BG
vim.cmd('set cmdheight=0') -- Invisible cmd bar

-- Plugins setup
require("nvim-tree").setup()
require('lualine').setup()
