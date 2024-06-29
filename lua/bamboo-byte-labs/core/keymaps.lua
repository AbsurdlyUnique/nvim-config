vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>+", "<C-a>>", { desc = "Increment a number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement a number "})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split nvim vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split nvim horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "rearrange splits" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close active split" })





keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close active tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "switch to next tab in order" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "open active buffer in new tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open active bufferr in new tab" })
