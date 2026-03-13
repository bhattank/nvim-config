-- define a leader key; hit first and waits for other combos. 
vim.g.mapleader = " " -- leader key is space bar 

-- bind :Ex to space + "cd" - for change directory. "n" - normal mode
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- Terminal to Normal Mode 
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Splits 
vim.keymap.set("n", "<leader>nw", "<C-w>v", { desc = "New vertical split" }) -- could change to vim.keymap.set("n", <leader>nw, "C-w>v:terminal<CR>", {desc = New terminal window})
vim.keymap.set("n", "<leader>lw", "<C-w>h", { desc = "Move to left window" }) 
vim.keymap.set("n", "<leader>rw", "<C-w>l", { desc = "Move to right window" }) 
