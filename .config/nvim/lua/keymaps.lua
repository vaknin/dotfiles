local keymap = vim.keymap.set -- Shorten function name

keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c"

-- Better paste (without yanking)
keymap("v", "p", '"_dP')

-- nvim-tree
keymap("n", "<leader>f", ":NvimTreeToggle<CR>")

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>")
keymap("x", "<leader>/", "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

-- Faster find-and-replace
keymap("n", "S", "<cmd> %s//g<CR>")
