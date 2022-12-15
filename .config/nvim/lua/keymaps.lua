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

-- nvim-tree
keymap("n", "<leader>f", ":NvimTreeToggle<CR>")
keymap("n", "<leader>e", ":NvimTreeFocus<CR>")

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>")
keymap("x", "<leader>/", "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

-- Ease of use shortcuts
keymap("v", "p", '"_dP') -- Better paste (without yanking)
keymap("v", "d", '"_d') -- Better delete (without yanking)
keymap("n", "<C-c>", ":bd<CR>") -- Close buffer
keymap("n", "<C-5>", ':Telescope buffers<CR>') -- Jump to buffer by number
keymap("n", "<C-S-Enter>", ':!cargo run<CR>') -- run a rust file
keymap("n", "<C-Q>", ':wqa!<CR>') -- Save everything and quit  
