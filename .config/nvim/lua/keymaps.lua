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

-- Utility shortcuts (Space)
keymap("n", "<leader>f", ":NvimTreeFindFileToggle<CR>")
keymap("n", "<leader>e", ":NvimTreeFocus<CR>")
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>")
keymap("x", "<leader>/", "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
keymap("n", "<leader>r", ':w | !cd %:p:h && cargo run<CR>') -- Run a rust file
keymap("n", "<leader>h", ':HopAnywhere<CR>') -- Hop anywhere
keymap("n", "<leader>t", ':FloatermNew! cd %:p:h && clear <CR>') -- Open a terminal

-- Ease of use shortcuts
keymap("v", "p", '"_dp') -- Better paste (without yanking)
keymap("v", "P", '"_dP') -- Better paste (without yanking)
keymap("n", "<C-]>", ':Telescope buffers<CR>') -- Jump to buffer by number, ] = 5
keymap({"n", "i", "v"}, "<C-x>", '<Esc>:wqa!<CR>') -- Save everything and quit, note that '[' = Esc 
keymap("i", "<C-s>", "<Esc>:w | startinsert | call cursor(line(0), col('.') + 1)<CR>") -- Save while inserting
keymap("n", "<C-s>", ":w<CR>") -- Quick-Save
keymap("i", "<C-p>", "<Esc>p:startinsert | call cursor(line(0), col('.') + 1)<CR>") -- Paste from insert

-- Buffers/Tabs (Alt)
keymap("n", "<A-c>", ":bd<CR>") -- Closes the current buffer
keymap("n", "<A-Left>", ":bp<CR>") -- prev
keymap("n", "<A-Right>", ":bn<CR>") -- next
keymap({"n", "v", "i"}, "<A-Up>", "<Esc>ddkP") -- move line up
keymap({"n", "v", "i"}, "<A-Down>", "<Esc>ddjP") -- move line down
